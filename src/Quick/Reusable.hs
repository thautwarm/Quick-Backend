-- This is correct but inpractical in Haskell, just repeat ourselves
--instance (Field s l t, IsGenSym t) => IsGenSym s where
--  gensym n = do
--    s <- get
--    let (a, sInner) = runState (gensym n) (s .: label @l)
--    modify (label @l .-> const sInner)
--    return a
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE UndecidableInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE OverlappingInstances #-}

module Quick.Reusable where

import Control.Monad.State
import qualified Data.Map.Strict as Map
import Data.Maybe (fromMaybe)
import qualified Data.Set as Set
import Quick.Dump
import Quick.Row
import Quick.St

type N = String

data GenSymT =
  GenSymT Int (Set.Set N)

data SymCnt =
  SymCnt

data SymNS =
  SymNS

instance Label SymCnt where
  label = SymCnt

instance Label SymNS where
  label = SymNS

instance Field GenSymT SymCnt Int where
  GenSymT i _ .: SymCnt = i
  SymCnt .-> f = \(GenSymT i m) -> GenSymT (f i) m

instance Field GenSymT SymNS (Set.Set N) where
  GenSymT _ m .: SymNS = m
  SymNS .-> f = \(GenSymT i m) -> GenSymT i (f m)

instance IsGenSym GenSymT where
  gensym n = do
    st <- get
    let ns = st .: SymNS
        cnt = st .: SymCnt
    n <- pure $ n ++ show cnt
    n <- pure $ until (`Set.notMember` ns) ('_' :) n
    modify $ (SymNS .-> Set.insert n) . (SymCnt .-> (+ 1))
    return n

data ScopeT where
  ScopeT :: Map.Map N N -> GenSymT -> ScopeT

data GenSymL =
  GenSymL

instance Label GenSymL where
  label = GenSymL

instance Field ScopeT GenSymL GenSymT where
  ScopeT _ gen .: _ = gen
  GenSymL .-> f = \(ScopeT m gen) -> ScopeT m (f gen)

instance Field ScopeT Me (Map.Map N N) where
  ScopeT m _ .: _ = m
  Me .-> f = \(ScopeT m gen) -> ScopeT (f m) gen

instance IsGenSym ScopeT where
  gensym n = do
    s <- get
    let (a, sInner) = runState (gensym n) (s .: GenSymL)
    modify (GenSymL .-> const sInner)
    return a

instance IsScope ScopeT where
  enter n = do
    st <- get
    n' <- gensym n
    modify $ Me .-> Map.insert n n'
    return n'
  require n = do
    n' <- gets $ (n `Map.lookup`) . (.: Me)
    case n' of
      Just n -> return n
      _ -> error $ "undef variable" ++ n
  locally m = do
    sc <- gets (.: Me)
    a <- m
    modify $ Me .-> const sc
    return a

data ScopeL =
  ScopeL

instance Label ScopeL where
  label = ScopeL

data EmuSymStore =
  EmuSymStore (Map.Map N Integer) ScopeT

instance Field EmuSymStore Me (Map.Map N Integer) where
  EmuSymStore m _ .: _ = m
  _ .-> f = \(EmuSymStore m sc) -> EmuSymStore (f m) sc

instance Field EmuSymStore ScopeL ScopeT where
  EmuSymStore _ sc .: _ = sc
  _ .-> f = \(EmuSymStore m sc) -> EmuSymStore m (f sc)

instance IsTagStore EmuSymStore Integer where
  symConst n st = fromMaybe (error $ "Unknown tag " ++ n) (n `Map.lookup` (st .: Me))

newtype NativeSymStore =
  NativeSymStore ScopeT

instance Field NativeSymStore ScopeL ScopeT where
  NativeSymStore sc .: _ = sc
  _ .-> f = \(NativeSymStore sc) -> NativeSymStore (f sc)

instance IsTagStore NativeSymStore DumpTree where
  symConst n st = Leaf {litKind = Symbol, litStr = n}

instance (IsGenSym s, Field s ScopeL ScopeT) => IsScope s where
  enter n = do
    s <- get
    let (a, sInner) = runState (enter n) (s .: ScopeL)
    modify (ScopeL .-> const sInner)
    return a
  require n = do
    s <- get
    let (a, sInner) = runState (require n) (s .: ScopeL)
    modify (ScopeL .-> const sInner)
    return a
  locally m = do
    s <- get
    let sHold = s .: ScopeL
    a <- m
    modify (ScopeL .-> const sHold)
    return a

instance (Field s GenSymL GenSymT) => IsGenSym s where
  gensym n = do
    s <- get
    let (a, sInner) = runState (gensym n) (s .: GenSymL)
    modify (GenSymL .-> const sInner)
    return a

instance Field NativeSymStore GenSymL GenSymT where
  a .: _ = a .: ScopeL .: GenSymL
  _ .-> f = ScopeL .-> GenSymL .-> f

instance Field EmuSymStore GenSymL GenSymT where
  a .: _ = a .: ScopeL .: GenSymL
  _ .-> f = ScopeL .-> GenSymL .-> f