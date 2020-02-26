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

import           Data.Map.Strict      (Map)
import qualified Data.Map.Strict      as Map
import qualified Data.Set             as Set
import           Prelude              hiding (writeFile)

import           Control.Arrow
import           Control.Monad.State
import           Data.Aeson
import           Data.Aeson.Text      (encodeToLazyText)
import           Data.Text.Lazy.IO    (writeFile)
import           GHC.Generics
import           Idris.Core.TT
import           IRTS.CodegenCommon
import           IRTS.Defunctionalise
import           IRTS.Lang

--specify :: N -> Maybe SDExp
--specify "MkUnit"             = Just SDDoNothing
--specify "Prelude.Bool.True"  = Just (SDExt $ EV "True")
--specify "Prelude.Bool.False" = Just (SDExt $ EV "False")
--specify _                    = Nothing

codegenQB :: Bool -> Bool -> Bool -> CodeGenerator
codegenQB anf regOpt symEmu ci = writeFile filename (encodeToLazyText "")
  where
    filename = outputFile ci
        -- ir = defunDecls ci >>= (cg . sdExp)
        -- t = map (showCG . fst) . simpleDecls $ ci
