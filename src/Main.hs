{-# LANGUAGE NamedFieldPuns #-}

module Main where

import           Idris.AbsSyntax
import           Idris.Core.TT
import           Idris.ElabDecls
import           Idris.Main
import           Idris.ModeCommon
import           Idris.Options
import           Idris.REPL
import           IRTS.Simplified

import           IRTS.CodegenCommon
import           IRTS.CodegenQB
import           IRTS.Compiler

import           Control.Monad
import           System.Environment
import           System.Exit

import           Paths_quick_backend

data Opts =
  Opts
    { inputs   :: [FilePath]
    , output   :: FilePath
    , anf      :: Bool -- anf transform
    , regOpt   :: Bool -- register allocation optimisation
    , symEmu   :: Bool -- LISP-symbol emulation
    , javaName :: Bool
    }

showUsage = do
  putStrLn "A code generator which is intended to be called by the compiler, not by a user."
  putStrLn "Usage: idris-codegen-qb <ibc-files> [-o <output-file>]"
  exitSuccess

getOpts :: IO Opts
getOpts = process (Opts [] "a.out" False False False False) <$> getArgs
  where
    process opts ("-o":o:xs) = process (opts {output = o}) xs
    process opts ("--anf":xs) = process (opts {anf = True}) xs
    process opts ("--regopt":xs) = process (opts {regOpt = True}) xs
    process opts ("--symemu":xs) = process (opts {symEmu = True}) xs
    process opts ("--javaName":xs) = process (opts {javaName = True}) xs
    process opts (x:xs) = process (opts {inputs = x : inputs opts}) xs
    process opts [] = opts

cMain :: Opts -> Idris ()
cMain Opts {inputs, output, anf, regOpt, symEmu, javaName} = do
  elabPrims
  loadInputs inputs Nothing
  mainProg <- fmap Just elabMain
  ir <- compile (Via IBCFormat "qb") output mainProg
  runIO $ codegenQB (anf, regOpt, symEmu, javaName) ir

main :: IO ()
main = do
  opts <- getOpts
  if null (inputs opts)
    then showUsage
    else runMain (cMain opts)
