{-# LANGUAGE DeriveFunctor             #-}
{-# LANGUAGE DeriveGeneric             #-}
{-# LANGUAGE DeriveTraversable         #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE FunctionalDependencies    #-}
{-# LANGUAGE GADTs                     #-}
{-# LANGUAGE LambdaCase                #-}
{-# LANGUAGE MultiParamTypeClasses     #-}
{-# LANGUAGE NamedFieldPuns            #-}
{-# LANGUAGE PartialTypeSignatures     #-}
{-# LANGUAGE PatternGuards             #-}
{-# LANGUAGE RankNTypes                #-}
{-# LANGUAGE ScopedTypeVariables       #-}
{-# OPTIONS_GHC   -Wno-partial-type-signatures #-}

module IRTS.CodegenQB
  ( codegenQB
  ) where

import           Data.Map.Strict       (Map)
import qualified Data.Map.Strict       as Map
import qualified Data.Set              as Set
import           Prelude               hiding (writeFile)

import           Control.Arrow
import           Control.Monad.State
import           Data.Aeson
import           Data.Aeson.Text       (encodeToLazyText)
import           Data.Text.Lazy.IO     (writeFile)
import           GHC.Generics
import           Idris.Core.TT
import           IRTS.CodegenCommon
import           IRTS.Defunctionalise
import           IRTS.Lang

import           Quick.Lower
import           Quick.Reusable
import           Quick.SDDecl
import           Quick.SymbolEmulation
import           Quick.Weakest

codegenQB :: Bool -> Bool -> Bool -> CodeGenerator
codegenQB anf regOpt symEmu ci = writeFile filename (encodeToLazyText "")
  where
    filename = outputFile ci
    sddecls = map (sdDecl . snd) (defunDecls ci)
    st = ScopeT Map.empty $ GenSymT 0 Set.empty
    tree
      | symEmu =
        let st' = EmuSymStore Map.empty st
         in let st'' = execState (solveSymTb sddecls) st'
             in dumpWDecls $ evalState (lower sddecls) st''
      | otherwise =
        let st' = NativeSymStore st
         in dumpWDecls $ evalState (lower sddecls) st'
