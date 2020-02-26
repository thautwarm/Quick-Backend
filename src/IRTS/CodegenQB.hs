{-# LANGUAGE LambdaCase
  , DeriveGeneric
  , ViewPatterns
  , NamedFieldPuns
  , DeriveTraversable
  , DeriveFunctor
  , FlexibleInstances
  , MultiParamTypeClasses
  , ScopedTypeVariables
  , PartialTypeSignatures
#-}
module IRTS.CodegenQB(codegenQB) where
import Data.Map.Strict (Map)
import Prelude hiding (writeFile)
import qualified Data.Map.Strict as Map

import Idris.Core.TT
import IRTS.Lang
import IRTS.Defunctionalise
import IRTS.CodegenCommon
import Data.Aeson.Text (encodeToLazyText)
import Data.Text.Lazy.IO (writeFile)
import Data.Aeson
import GHC.Generics
import Control.Arrow

type N =
    String

-- Idris has to distinguish values and thunks,
-- hence an external object needs
-- following representations.
data Ext a
    = EF N [a] -- call external functions
    | EV N     -- access external variables
    deriving (Show, Ord, Eq)

-- | simplified DDecl
-- TODO: tail call support
data SDExp
    = SDVar N
    | SDExt (Ext SDExp)
    | SDApp Bool N [SDExp]
    | SDLet N SDExp SDExp
    | SDUp N SDExp
    | SDProj SDExp Int
    | SDCons N [SDExp]
    | SDCase SDExp [SDAlt]
    | SDConst Const
    | SDOp PrimFn [SDExp]
    | SDDoNothing
    | SDError String
    deriving (Eq, Ord, Show)

data SDAlt
    = SDConCase N [N] SDExp
    | SDConstCase Const SDExp
    | SDDefaultCase SDExp
    deriving (Eq, Ord, Show)

data SDDecl
    = SDDefFun N [N] SDExp
    | SDDefCons N Int
    deriving (Eq, Ord, Show)

type WDecl form = WStmt form
data WStmt form
    = WUp N (WExp form)
    | WDefFun N [N] [WStmt form]
    | WSwitch form [(Const, [WStmt form])]
    | WIf form [WStmt form] [WStmt form]
    deriving (Eq, Ord, Show)

data WExp form
    = WVar N
    | WApp N [form]
    | WC   Const
    deriving (Eq, Ord, Show)

newtype Fix f = InT {outT :: f (Fix f)}

data ANFTerm
    = LN N
    | LC Const

type NonANFWExp = Fix WExp
type NonANFWStmt = WStmt NonANFWExp

specify :: N -> Maybe SDExp
specify "MkUnit"             = Just SDDoNothing
specify "Prelude.Bool.True"  = Just (SDExt $ EV "True")
specify "Prelude.Bool.False" = Just (SDExt $ EV "False")
specify _ = Nothing

sdExp :: DExp -> SDExp
sdExp = \case
    DV (showCG -> name) ->
        SDVar name
    DApp isTailCall (showCG -> name) (map sdExp -> args) ->
        SDApp isTailCall name args
    DLet (showCG -> name) (sdExp -> v) (sdExp -> body) ->
        SDLet name v body
    DUpdate (showCG -> name) (sdExp -> body) ->
        SDUp name body
    DC _ _ (showCG -> name) (map sdExp -> args) ->
        SDCons name args
    DCase _ (sdExp -> target) (map sdAlt -> alts) ->
        SDCase target alts
    DChkCase (sdExp -> target) (map sdAlt -> alts) ->
        SDCase target alts
    DProj (sdExp -> var) i ->
        SDProj var i
    DConst const ->
        SDConst const
    DOp primfn (map sdExp -> vars) -> SDOp primfn vars
    DNothing -> SDDoNothing
    DError s -> SDError s
    DForeign _ fname (map (sdExp . snd) -> xs) ->

        case fname of
            FApp n [FStr name] | show n == "FVar" ->
                if null xs then
                    SDExt (EV name)
                else
                    error $
                      "Accessing foreign variable " ++ name ++
                      "requires no function arguments."
            FApp n [FStr name] | show n == "FFunc" ->
                SDExt (EF name xs)
            _ -> error $ "Not supported FFI ops :" ++ show fname

sdAlt :: DAlt -> SDAlt
sdAlt = \case
    DConCase _ (showCG -> target) (map showCG -> binds) (sdExp -> body) ->
        SDConCase target binds body
    DConstCase const (sdExp -> body) ->
        SDConstCase const body
    DDefaultCase (sdExp -> body) ->
        SDDefaultCase body

sdDecl :: DDecl -> SDDecl
sdDecl = \case
    DFun (showCG -> fname) (map showCG -> args) (sdExp -> body) ->
        SDDefFun fname args body
    DConstructor (showCG -> ctorName) _ ary ->
        SDDefCons ctorName ary

    -- DC _ _ (specify -> Just specified) [] ->
    --     specified
    -- DC _ _ (showCG -> name) [] ->
    --     SDVar name
    -- DC _ _ (showCG -> name) (map sdExp -> args) ->
    --     SDApp (SDExt "MakeTuple") []
    

    
    
    


cg :: [NonANFWExp] -> String
cg = error ""

codegenQB :: Bool -> Bool -> Bool -> CodeGenerator
codegenQB anf regOpt symEmu ci =
    writeFile filename (encodeToLazyText "")
    where
        filename = outputFile ci
        -- ir = defunDecls ci >>= (cg . sdExp)
        -- t = map (showCG . fst) . simpleDecls $ ci


-- data ComIR
--     = ComLet String ComIR ComIR
--     | ComLetrec [(String, ComIR)] ComIR
--     | ComIf ComIR ComIR ComIR
--     | ComWhile ComIR ComIR
--     | ComMutate String ComIR
--     | ComFun [String] ComIR
--     | ComApp ComIR [ComIR]
--     | ComVar String
--     | ComBlock [ComIR]
--     | ComTuple [ComIR]
--     | ComProj ComIR ComIR

--     | ComSymbol String -- implement fast data types
--     | ComBigInt Integer
--     | ComInt Int
--     | ComDouble Double
--     | ComStr String
--     | ComCh Char
--     | ComBool Bool
--     | ComNil
--     | ComInternal String
--     deriving (Show, Eq, Ord, Generic)

-- instance ToJSON ComIR where
--     toEncoding = genericToEncoding defaultOptions

-- asThunk :: ComIR -> ComIR
-- asThunk = ComFun []

-- codegenCam :: CodeGenerator
-- codegenCam ci =
--     writeFile filename (encodeToLazyText . toJSON $ ir)
--     where
--         filename = outputFile ci
--         ir = mkDecls . fmap snd $ defunDecls ci
--         t = map (showCG . fst) . simpleDecls $ ci

-- specify (showCG -> "MkUnit") = ComNil
-- specify (showCG -> "Prelude.Bool.True") = ComBool True
-- specify (showCG -> "Prelude.Bool.False") = ComBool False
-- specify (showCG -> a) = ComSymbol a

-- decl :: DDecl -> (String, ComIR)
-- decl (DFun n ns body) =
--     (showCG n, ComFun (fmap showCG ns) $ toIR body)
-- decl (DConstructor n tag arity) =
--     (showCG n, ComFun argnames dataComposition)
--     where
--         argnames = take arity  vars
--         dataComposition =
--             if null argnames
--             then specify n
--             else ComTuple (ComSymbol (showCG n) : fmap ComVar argnames)

-- mkDecls :: [DDecl] -> ComIR -- top level let recs
-- mkDecls xs =
--     ComLetrec (fmap decl xs) (ComApp (toIR $ sMN 0 "runMain") [])

-- camErr = ComInternal "cam-rt.err"
-- camCmp = ComInternal "cam-rt.cmp"
-- camIs = ComInternal "cam-rt.is"

-- class HasIR a where
--     toIR :: a -> ComIR

-- instance HasIR  Name where
--     toIR = ComVar . showCG

-- instance HasIR Const where
--     toIR = \case
--         I i -> ComInt i
--         Fl d -> ComDouble d
--         Ch c -> ComCh c
--         Str s -> ComStr s
--         BI i -> ComBigInt i
--         a -> error $ "not impl: " ++ show a

-- instance HasIR DExp where
--     toIR = \case
--         DV name            -> toIR name
--         DApp _ name args   -> ComApp (toIR name) $ fmap toIR args
--         DLet name v body   -> ComLet (showCG name) (toIR v) (toIR body)
--         DUpdate name body  -> ComMutate (showCG name) (toIR body)
--         DC _ i name []     -> specify name
--         DC _ i name args   -> ComTuple $ ComSymbol (showCG name) : fmap toIR args
--         DCase _ var' alts  -> patternMatchComp var' alts
--         -- temporarily I treat SChkCase as SCase, for I don't know their diffs accurately.
--         DChkCase var' alts -> patternMatchComp var' alts
--         DProj var i        -> ComProj (toIR var) (ComInt i)
--         DConst const       -> toIR const
--         DForeign retTy fname xs ->
--             let args = fmap (toIR . snd) xs in
--             case fname of
--                 FApp n [FStr name] | show n == "BuiltinVar"->
--                     if null xs then
--                         ComInternal $ "builtin-" ++ name
--                     else errorWithoutStackTrace "Accessing foreign variables requires no function arguments."
--                 FApp n [FStr name] | show n == "Builtin" ->
--                     let f = ComInternal $ "builtin-" ++ name
--                     in  ComApp f args
--                 FApp n [FStr mod, FStr name] | show n == "LibraryVar"->
--                     if null xs then
--                         ComInternal $ mod ++ "-" ++ name
--                     else errorWithoutStackTrace "Accessing foreign variables requires no function arguments."
--                 FApp n [FStr mod, FStr name] | show n == "Library" ->
--                     let f = ComInternal $ mod ++ "-" ++ name
--                     in ComApp f args
--                 op -> errorWithoutStackTrace $ "Not supported FFI ops :" ++ show op

--         DOp primfn vars    -> ComApp (toIR primfn) $ fmap toIR vars
--         DNothing           -> ComNil -- will never be inspected
--         DError s           -> ComApp camErr [ComStr s]


-- patternMatchComp var' cs = recur cs where
--     var = toIR var'
--     recur [] = ComApp camErr [ComStr $ "unsolved case for " ++ show var' ++ " : " ++ show cs]
--     recur (x:xs) =
--         let tail = recur xs
--         in case x of
--             DConCase _ n ns body
--                 | null ns ->
--                     let cond = ComApp camIs [specify n, var]
--                     in  ComIf cond (toIR body) tail
--                 | otherwise ->
--                 let capturing = foldr reducer (toIR body) (zip ns [1 ..])
--                     casename = showCG n
--                     reducer (n, i) = ComLet (showCG n) (ComProj var $ ComInt i)
--                     cond = ComApp camIs [ComSymbol casename, ComProj var $  ComInt 0]
--                 in ComIf cond capturing tail
--             DConstCase const body ->
--                 ComIf (ComApp camCmp [var, toIR const]) (toIR body) tail
--             DDefaultCase body -> toIR body

-- instance HasIR PrimFn where
--     toIR = \case
--         LPlus _ -> ComInternal "prim-plus"
--         LMinus _ -> ComInternal "prim-minus"
--         LTimes _ -> ComInternal "prim-times"
--         LUDiv _ -> ComInternal "prim-udiv"
--         LSDiv _ -> ComInternal "prim-sdiv"
--         LURem _ -> ComInternal "prim-urem"
--         LSRem _ -> ComInternal "prim-srem"
--         LAnd _ -> ComInternal "prim-and"
--         LOr _ -> ComInternal "prim-or"
--         LXOr _ -> ComInternal "prim-xor"
--         LCompl _ -> ComInternal "prim-compl"
--         LSHL _ -> ComInternal "prim-shl"
--         LLSHR _ -> ComInternal "prim-lshr"
--         LASHR _ -> ComInternal "prim-ashr"
--         LEq _ -> ComInternal "prim-eq"
--         LLt _ -> ComInternal "prim-lt"
--         LLe _ -> ComInternal "prim-le"
--         LGt _ -> ComInternal "prim-gt"
--         LGe _ -> ComInternal "prim-ge"
--         LSLt _ -> ComInternal "prim-slt"
--         LSLe _ -> ComInternal "prim-sle"
--         LSGt _ -> ComInternal "prim-sgt"
--         LSGe _ -> ComInternal "prim-sge"
--         LSExt _ _ -> ComInternal "prim-sext"
--         LZExt _ _ -> ComInternal "prim-zext"
--         LTrunc _ _ -> ComInternal "prim-trunc"
--         LStrConcat  -> ComInternal "prim-strconcat"
--         LStrLt  -> ComInternal "prim-strlt"
--         LStrEq  -> ComInternal "prim-streq"
--         LStrLen  -> ComInternal "prim-strlen"
--         LIntFloat _ -> ComInternal "prim-intfloat"
--         LFloatInt _ -> ComInternal "prim-floatint"
--         LIntStr _ -> ComInternal "prim-intstr"
--         LStrInt _ -> ComInternal "prim-strint"
--         LFloatStr  -> ComInternal "prim-floatstr"
--         LStrFloat  -> ComInternal "prim-strfloat"
--         LChInt _ -> ComInternal "prim-chint"
--         LIntCh _ -> ComInternal "prim-intch"
--         LBitCast _ _ -> ComInternal "prim-bitcast"
--         LFExp  -> ComInternal "prim-fexp"
--         LFLog  -> ComInternal "prim-flog"
--         LFSin  -> ComInternal "prim-fsin"
--         LFCos  -> ComInternal "prim-fcos"
--         LFTan  -> ComInternal "prim-ftan"
--         LFASin  -> ComInternal "prim-fasin"
--         LFACos  -> ComInternal "prim-facos"
--         LFATan  -> ComInternal "prim-fatan"
--         LFATan2  -> ComInternal "prim-fatan2"
--         LFSqrt  -> ComInternal "prim-fsqrt"
--         LFFloor  -> ComInternal "prim-ffloor"
--         LFCeil  -> ComInternal "prim-fceil"
--         LFNegate  -> ComInternal "prim-fnegate"
--         LStrHead  -> ComInternal "prim-strhead"
--         LStrTail  -> ComInternal "prim-strtail"
--         LStrCons  -> ComInternal "prim-strcons"
--         LStrIndex  -> ComInternal "prim-strindex"
--         LStrRev  -> ComInternal "prim-strrev"
--         LStrSubstr  -> ComInternal "prim-strsubstr"
--         LReadStr  -> ComInternal "prim-readstr"
--         LWriteStr  -> ComInternal "prim-writestr"
--         LSystemInfo  -> ComInternal "prim-systeminfo"
--         LFork  -> ComInternal "prim-fork"
--         LPar  -> ComInternal "prim-par"
--         LExternal _ -> ComInternal "prim-external"
--         LCrash  -> ComInternal "prim-crash"
--         LNoOp  -> ComInternal "prim-noop"
