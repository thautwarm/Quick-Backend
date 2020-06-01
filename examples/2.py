from rts import RTS as __RTS
def Prelude_46_Bool_46__38__38_(_123_arg_95_0_125_,_123_arg_95_1_125_):
  valToMatch = None
  valToMatch = _123_arg_95_0_125_
  caseMerged = None
  if valToMatch == False:
    caseMerged = _123_arg_95_0_125_

  elif valToMatch == True:
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_1_125_)

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def Prelude_46_List_46__43__43_(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  valToMatch = None
  valToMatch = _123_arg_95_1_125_
  caseMerged = None
  if valToMatch == 3:
    caseMerged = _123_arg_95_2_125_

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 2:
        _123_in_95_3_125_ = None
        _123_in_95_3_125_ = __RTS.proj(valToMatch, 1)
        _123_in_95_4_125_ = None
        _123_in_95_4_125_ = __RTS.proj(valToMatch, 2)
        caseMerged = __RTS.make_tuple(2, _123_in_95_3_125_, Prelude_46_List_46__43__43_(None, _123_in_95_4_125_, _123_arg_95_2_125_))

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def Prelude_46_Basics_46__46_(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_arg_95_4_125_,_123_x_95_5_125_):
  return _123_APPLY_95_0_125_(_123_arg_95_3_125_, _123_APPLY_95_0_125_(_123_arg_95_4_125_, _123_x_95_5_125_))

def ForeignEnv_46__58__58_():
  return 4

def Prelude_46_List_46__58__58_(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(2, constructor_95_arg, _constructor_95_arg)

def Prelude_46_Stream_46__58__58_(constructor_95_arg):
  return __RTS.make_tuple(5, constructor_95_arg)

def _61_(constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg):
  return __RTS.make_tuple(6, constructor_95_arg, _constructor_95_arg, __constructor_95_arg, ___constructor_95_arg)

def Language_46_Reflection_46_ATDouble():
  return 7

def Language_46_Reflection_46_ATInt():
  return 8

def Language_46_Reflection_46_AType():
  return 9

def Prelude_46_Interfaces_46_Abs(constructor_95_arg):
  return __RTS.make_tuple(10, constructor_95_arg)

def Prelude_46_WellFounded_46_Access():
  return 11

def Prelude_46_WellFounded_46_Accessible(constructor_95_arg,_constructor_95_arg,__constructor_95_arg):
  return __RTS.make_tuple(12, constructor_95_arg, _constructor_95_arg, __constructor_95_arg)

def Prelude_46_Nat_46_Additive():
  return 13

def Language_46_Reflection_46_AllTypes():
  return 14

def Language_46_Reflection_46_Errors_46_AlreadyDefined():
  return 15

def Prelude_46_Applicative_46_Alternative(constructor_95_arg):
  return __RTS.make_tuple(16, constructor_95_arg)

def Language_46_Reflection_46_App():
  return 17

def Prelude_46_Show_46_App():
  return 18

def Prelude_46_File_46_Append():
  return 19

def Prelude_46_Applicative_46_Applicative(constructor_95_arg):
  return __RTS.make_tuple(20, constructor_95_arg)

def Language_46_Reflection_46_ApplyTactic():
  return 21

def Language_46_Reflection_46_ArithTy():
  return 22

def Language_46_Reflection_46_B16():
  return 23

def Language_46_Reflection_46_B32():
  return 24

def Language_46_Reflection_46_B64():
  return 25

def Language_46_Reflection_46_B8():
  return 26

def Language_46_Reflection_46_BI():
  return 27

def Prelude_46_Show_46_Backtick():
  return 28

def Language_46_Reflection_46_Bind():
  return 29

def Language_46_Reflection_46_Binder(constructor_95_arg):
  return __RTS.make_tuple(30, constructor_95_arg)

def Prelude_46_Bool_46_Bool():
  return 31

def Ownership_46_Borrowed(constructor_95_arg):
  return __RTS.make_tuple(32, constructor_95_arg)

def Language_46_Reflection_46_Bound():
  return 33

def Language_46_Reflection_46_ByReflection():
  return 34

def CData():
  return 35

def FFI_95_C_46_CFnPtr(constructor_95_arg):
  return __RTS.make_tuple(36, constructor_95_arg)

def FFI_95_C_46_C_95_Any():
  return 37

def FFI_95_C_46_C_95_CData():
  return 38

def FFI_95_C_46_C_95_Float():
  return 39

def FFI_95_C_46_C_95_Fn():
  return 40

def FFI_95_C_46_C_95_FnBase():
  return 41

def FFI_95_C_46_C_95_FnIO():
  return 42

def FFI_95_C_46_C_95_FnT():
  return 43

def FFI_95_C_46_C_95_FnTypes(constructor_95_arg):
  return __RTS.make_tuple(44, constructor_95_arg)

def FFI_95_C_46_C_95_IntBits16():
  return 45

def FFI_95_C_46_C_95_IntBits32():
  return 46

def FFI_95_C_46_C_95_IntBits64():
  return 47

def FFI_95_C_46_C_95_IntBits8():
  return 48

def FFI_95_C_46_C_95_IntChar():
  return 49

def FFI_95_C_46_C_95_IntNative():
  return 50

def FFI_95_C_46_C_95_IntT():
  return 51

def FFI_95_C_46_C_95_IntTypes(constructor_95_arg):
  return __RTS.make_tuple(52, constructor_95_arg)

def FFI_95_C_46_C_95_MPtr():
  return 53

def FFI_95_C_46_C_95_Ptr():
  return 54

def FFI_95_C_46_C_95_Str():
  return 55

def FFI_95_C_46_C_95_Types(constructor_95_arg):
  return __RTS.make_tuple(56, constructor_95_arg)

def FFI_95_C_46_C_95_Unit():
  return 57

def Language_46_Reflection_46_Errors_46_CantConvert():
  return 58

def Language_46_Reflection_46_Errors_46_CantInferType():
  return 59

def Language_46_Reflection_46_Errors_46_CantIntroduce():
  return 60

def Language_46_Reflection_46_Errors_46_CantMatch():
  return 61

def Language_46_Reflection_46_Errors_46_CantResolve():
  return 62

def Language_46_Reflection_46_Errors_46_CantResolveAlts():
  return 63

def Language_46_Reflection_46_Errors_46_CantSolveGoal():
  return 64

def Language_46_Reflection_46_Errors_46_CantUnify():
  return 65

def Language_46_Reflection_46_Case():
  return 66

def Language_46_Reflection_46_CaseN():
  return 67

def Prelude_46_Cast_46_Cast(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(68, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_Ch():
  return 69

def Language_46_Reflection_46_Claim():
  return 70

def Prelude_46_Nat_46_CmpEQ():
  return 71

def Prelude_46_Nat_46_CmpGT():
  return 72

def Prelude_46_Nat_46_CmpLT():
  return 73

def Prelude_46_Nat_46_CmpNat(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(74, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_Compute():
  return 75

def Language_46_Reflection_46_Const():
  return 76

def Language_46_Reflection_46_Elab_46_Constraint():
  return 77

def Language_46_Reflection_46_Elab_46_Constructor():
  return 78

def Language_46_Reflection_46_Elab_46_ConstructorDefn():
  return 79

def Language_46_Reflection_46_Elab_46_CtorArg():
  return 80

def Language_46_Reflection_46_Elab_46_CtorField():
  return 81

def Language_46_Reflection_46_Elab_46_CtorParameter():
  return 82

def Language_46_Reflection_46_DCon():
  return 83

def Prelude_46_File_46_DHandle(constructor_95_arg):
  return __RTS.make_tuple(84, constructor_95_arg)

def FFI_95_Export_46_DHere():
  return 85

def Builtins_46_DPair(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(86, constructor_95_arg, _constructor_95_arg)

def FFI_95_Export_46_DThere():
  return 87

def FFI_95_Export_46_Data(constructor_95_arg,_constructor_95_arg,__constructor_95_arg):
  return __RTS.make_tuple(88, constructor_95_arg, _constructor_95_arg, __constructor_95_arg)

def FFI_95_Export_46_DataDefined(constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg):
  return __RTS.make_tuple(89, constructor_95_arg, _constructor_95_arg, __constructor_95_arg, ___constructor_95_arg)

def Language_46_Reflection_46_Elab_46_DataDefn():
  return 90

def Language_46_Reflection_46_Elab_46_Datatype():
  return 91

def Prelude_46_Basics_46_Dec(constructor_95_arg):
  return __RTS.make_tuple(92, constructor_95_arg)

def Decidable_46_Equality_46_DecEq(constructor_95_arg):
  return __RTS.make_tuple(93, constructor_95_arg)

def Language_46_Reflection_46_Elab_46_Declare():
  return 94

def Language_46_Reflection_46_Elab_46_DefineDatatype():
  return 95

def Language_46_Reflection_46_Elab_46_DefineFun():
  return 96

def Delay(constructor_95_arg):
  return __RTS.make_tuple(97, constructor_95_arg)

def DelayReason():
  return 98

def Delayed(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(99, constructor_95_arg, _constructor_95_arg)

def Prelude_46_File_46_Directory():
  return 100

def Prelude_46_Show_46_Dollar():
  return 101

def Prelude_46_Interfaces_46_EQ():
  return 102

def Prelude_46_Either_46_Either(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(103, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_Elab_46_Elab(constructor_95_arg):
  return __RTS.make_tuple(104, constructor_95_arg)

def Prelude_46_Pairs_46_Element():
  return 105

def FFI_95_Export_46_End():
  return 106

def Prelude_46_Enum(constructor_95_arg):
  return __RTS.make_tuple(107, constructor_95_arg)

def Prelude_46_Interfaces_46_Eq(constructor_95_arg):
  return __RTS.make_tuple(108, constructor_95_arg)

def Prelude_46_Show_46_Eq():
  return 109

def Language_46_Reflection_46_Elab_46_Erased():
  return 110

def Language_46_Reflection_46_Erased():
  return 111

def Language_46_Reflection_46_Elab_46_Erasure():
  return 112

def Language_46_Reflection_46_Errors_46_Err():
  return 113

def Prelude_46_Providers_46_Error():
  return 114

def Language_46_Reflection_46_ErrorReportPart():
  return 115

def Prelude_46_Pairs_46_Evidence():
  return 116

def Language_46_Reflection_46_Exact():
  return 117

def Prelude_46_Pairs_46_Exists(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(118, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_Elab_46_Explicit():
  return 119

def ForeignEnv_46_FEnv(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(120, constructor_95_arg, _constructor_95_arg)

def FFI():
  return 121

def FFI_95_Export_46_FFI_95_Base(constructor_95_arg,_constructor_95_arg,__constructor_95_arg):
  return __RTS.make_tuple(122, constructor_95_arg, _constructor_95_arg, __constructor_95_arg)

def FFI_95_Export_46_FFI_95_ExpType(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(123, constructor_95_arg, _constructor_95_arg)

def FFI_95_Export_46_FFI_95_Export(constructor_95_arg,_constructor_95_arg,__constructor_95_arg):
  return __RTS.make_tuple(124, constructor_95_arg, _constructor_95_arg, __constructor_95_arg)

def FFI_95_Export_46_FFI_95_Exportable(constructor_95_arg,_constructor_95_arg,__constructor_95_arg):
  return __RTS.make_tuple(125, constructor_95_arg, _constructor_95_arg, __constructor_95_arg)

def FFI_95_Export_46_FFI_95_Fun(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(126, constructor_95_arg, _constructor_95_arg)

def FFI_95_Export_46_FFI_95_IO(constructor_95_arg):
  return __RTS.make_tuple(127, constructor_95_arg)

def FFI_95_Export_46_FFI_95_Prim(constructor_95_arg):
  return __RTS.make_tuple(128, constructor_95_arg)

def FFI_95_Export_46_FFI_95_Ret(constructor_95_arg):
  return __RTS.make_tuple(129, constructor_95_arg)

def FFun():
  return 130

def Prelude_46_File_46_FHandle(constructor_95_arg):
  return __RTS.make_tuple(131, constructor_95_arg)

def FRet():
  return 132

def FTy(constructor_95_arg,_constructor_95_arg,__constructor_95_arg):
  return __RTS.make_tuple(133, constructor_95_arg, _constructor_95_arg, __constructor_95_arg)

def Language_46_Reflection_46_Fail():
  return 134

def Prelude_46_Bool_46_False():
  return 0

def Prelude_46_File_46_File():
  return 135

def Prelude_46_File_46_FileError():
  return 136

def Language_46_Reflection_46_FileLoc():
  return 137

def Prelude_46_File_46_FileNotFound():
  return 138

def Prelude_46_File_46_FileReadError():
  return 139

def Prelude_46_File_46_FileWriteError():
  return 140

def Language_46_Reflection_46_Fill():
  return 141

def Language_46_Reflection_46_Elab_46_Fixity():
  return 142

def Language_46_Reflection_46_Fl():
  return 143

def Language_46_Reflection_46_Focus():
  return 144

def Prelude_46_Foldable_46_Foldable(constructor_95_arg):
  return __RTS.make_tuple(145, constructor_95_arg)

def Force(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return _123_EVAL_95_0_125_(_123_arg_95_2_125_)

def Language_46_Reflection_46_Forgot():
  return 146

def Prelude_46_Interfaces_46_Fractional(constructor_95_arg):
  return __RTS.make_tuple(147, constructor_95_arg)

def FFI_95_Export_46_Fun(constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg):
  return __RTS.make_tuple(148, constructor_95_arg, _constructor_95_arg, __constructor_95_arg, ___constructor_95_arg)

def Language_46_Reflection_46_Elab_46_FunArg():
  return 149

def Language_46_Reflection_46_Elab_46_FunClause(constructor_95_arg):
  return __RTS.make_tuple(150, constructor_95_arg)

def Language_46_Reflection_46_Elab_46_FunDefn(constructor_95_arg):
  return __RTS.make_tuple(151, constructor_95_arg)

def Prelude_46_Functor_46_Functor(constructor_95_arg):
  return __RTS.make_tuple(152, constructor_95_arg)

def Language_46_Reflection_46_GHole():
  return 153

def Prelude_46_Interfaces_46_GT():
  return 154

def Prelude_46_File_46_GenericFileError():
  return 155

def Prelude_46_Nat_46_GetAdditive():
  return 156

def Prelude_46_Nat_46_GetMultiplicative():
  return 157

def Language_46_Reflection_46_GoalType():
  return 158

def Language_46_Reflection_46_Guess():
  return 159

def Language_46_Reflection_46_Hole():
  return 160

def Language_46_Reflection_46_I():
  return 161

def IO_39_(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(162, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_IT16():
  return 163

def Language_46_Reflection_46_IT32():
  return 164

def Language_46_Reflection_46_IT64():
  return 165

def Language_46_Reflection_46_IT8():
  return 166

def Language_46_Reflection_46_ITBig():
  return 167

def Language_46_Reflection_46_ITChar():
  return 168

def Language_46_Reflection_46_ITFixed():
  return 169

def Language_46_Reflection_46_ITNative():
  return 170

def Language_46_Reflection_46_Implementation():
  return 171

def Language_46_Reflection_46_ImplementationCtorN():
  return 172

def Language_46_Reflection_46_ImplementationN():
  return 173

def Language_46_Reflection_46_Elab_46_Implicit():
  return 174

def Prelude_46_List_46_InBounds(constructor_95_arg,_constructor_95_arg,__constructor_95_arg):
  return __RTS.make_tuple(175, constructor_95_arg, _constructor_95_arg, __constructor_95_arg)

def Prelude_46_List_46_InFirst():
  return 176

def Prelude_46_List_46_InLater():
  return 177

def Language_46_Reflection_46_Errors_46_Inaccessible():
  return 178

def Language_46_Reflection_46_Errors_46_IncompleteTerm():
  return 179

def Language_46_Reflection_46_Induction():
  return 180

def Infinite():
  return 181

def Language_46_Reflection_46_Errors_46_InfiniteUnify():
  return 182

def Language_46_Reflection_46_Elab_46_Infix():
  return 183

def Language_46_Reflection_46_Elab_46_Infixl():
  return 184

def Language_46_Reflection_46_Elab_46_Infixr():
  return 185

def Language_46_Reflection_46_IntTy():
  return 186

def Prelude_46_Interfaces_46_Integral(constructor_95_arg):
  return __RTS.make_tuple(187, constructor_95_arg)

def Language_46_Reflection_46_Errors_46_InternalMsg():
  return 188

def Language_46_Reflection_46_Intro():
  return 189

def Language_46_Reflection_46_Intros():
  return 190

def Language_46_Reflection_46_Errors_46_InvalidTCArg():
  return 191

def Prelude_46_Maybe_46_IsJust(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(192, constructor_95_arg, _constructor_95_arg)

def Prelude_46_List_46_IsNonEmpty():
  return 193

def Prelude_46_Nat_46_IsSucc(constructor_95_arg):
  return __RTS.make_tuple(194, constructor_95_arg)

def Prelude_46_Maybe_46_ItIsJust():
  return 195

def Prelude_46_Nat_46_ItIsSucc():
  return 196

def JS_95_Float():
  return 197

def JS_95_Fn():
  return 198

def JS_95_FnBase():
  return 199

def JS_95_FnIO():
  return 200

def JS_95_FnT():
  return 201

def JS_95_FnTypes(constructor_95_arg):
  return __RTS.make_tuple(202, constructor_95_arg)

def JS_95_IntChar():
  return 203

def JS_95_IntNative():
  return 204

def JS_95_IntT():
  return 205

def JS_95_IntTypes(constructor_95_arg):
  return __RTS.make_tuple(206, constructor_95_arg)

def JS_95_Ptr():
  return 207

def JS_95_Str():
  return 208

def JS_95_Types(constructor_95_arg):
  return __RTS.make_tuple(209, constructor_95_arg)

def JS_95_Unit():
  return 210

def JsFn(constructor_95_arg):
  return __RTS.make_tuple(211, constructor_95_arg)

def Prelude_46_Maybe_46_Just(constructor_95_arg):
  return __RTS.make_tuple(212, constructor_95_arg)

def Prelude_46_Interfaces_46_LT():
  return 213

def Prelude_46_Nat_46_LTE(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(214, constructor_95_arg, _constructor_95_arg)

def Prelude_46_Nat_46_LTESucc():
  return 215

def Prelude_46_Nat_46_LTEZero():
  return 216

def Language_46_Reflection_46_Lam():
  return 217

def LazyValue():
  return 218

def Prelude_46_Either_46_Left(constructor_95_arg):
  return __RTS.make_tuple(219, constructor_95_arg)

def Prelude_46_Nat_46_LeftIsNotZero():
  return 220

def Language_46_Reflection_46_Let():
  return 221

def Language_46_Reflection_46_LetTac():
  return 222

def Language_46_Reflection_46_LetTacTy():
  return 223

def Prelude_46_List_46_List(constructor_95_arg):
  return __RTS.make_tuple(224, constructor_95_arg)

def Language_46_Reflection_46_Errors_46_LoadingFailed():
  return 225

def Language_46_Reflection_46_MN():
  return 226

def ManagedPtr():
  return 227

def Prelude_46_Interfaces_46_MaxBound(constructor_95_arg):
  return __RTS.make_tuple(228, constructor_95_arg)

def Prelude_46_Maybe_46_Maybe(constructor_95_arg):
  return __RTS.make_tuple(229, constructor_95_arg)

def Language_46_Reflection_46_MetaN():
  return 230

def Language_46_Reflection_46_MethodN():
  return 231

def Prelude_46_Interfaces_46_MinBound(constructor_95_arg):
  return __RTS.make_tuple(232, constructor_95_arg)

def FFI_95_C_46_MkCFnPtr(constructor_95_arg):
  return __RTS.make_tuple(233, constructor_95_arg)

def Builtins_46_MkDPair():
  return 234

def Language_46_Reflection_46_Elab_46_MkDatatype():
  return 235

def MkFFI():
  return 236

def Language_46_Reflection_46_Elab_46_MkFunArg():
  return 237

def Language_46_Reflection_46_Elab_46_MkFunClause():
  return 238

def MkIO(constructor_95_arg):
  return __RTS.make_tuple(239, constructor_95_arg)

def Language_46_Reflection_46_Elab_46_MkImpossibleClause():
  return 240

def MkJsFn(constructor_95_arg):
  return __RTS.make_tuple(241, constructor_95_arg)

def Builtins_46_MkPair(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(242, constructor_95_arg, _constructor_95_arg)

def FFI_95_C_46_MkRaw(constructor_95_arg):
  return __RTS.make_tuple(243, constructor_95_arg)

def Prelude_46_Strings_46_MkString():
  return 244

def Builtins_46_MkUPair(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(245, constructor_95_arg, _constructor_95_arg)

def MkUnit():
  return 246

def Prelude_46_File_46_Mode():
  return 247

def Prelude_46_Monad_46_Monad(constructor_95_arg):
  return __RTS.make_tuple(248, constructor_95_arg)

def Prelude_46_Algebra_46_Monoid(constructor_95_arg):
  return __RTS.make_tuple(249, constructor_95_arg)

def Language_46_Reflection_46_Errors_46_Msg():
  return 250

def Prelude_46_Nat_46_Multiplicative():
  return 251

def Language_46_Reflection_46_NS():
  return 252

def Language_46_Reflection_46_NamePart():
  return 253

def Language_46_Reflection_46_NameType():
  return 254

def Prelude_46_Nat_46_Nat():
  return 255

def Language_46_Reflection_46_NativeTy():
  return 256

def Prelude_46_Interfaces_46_Neg(constructor_95_arg):
  return __RTS.make_tuple(257, constructor_95_arg)

def ForeignEnv_46_Nil():
  return 258

def Prelude_46_List_46_Nil():
  return 3

def Prelude_46_Basics_46_No():
  return 259

def Language_46_Reflection_46_Errors_46_NoRewriting():
  return 260

def Language_46_Reflection_46_Errors_46_NoSuchVariable():
  return 261

def Language_46_Reflection_46_Errors_46_NoTypeDecl():
  return 262

def Language_46_Reflection_46_Errors_46_NoValidAlts():
  return 263

def Language_46_Reflection_46_Errors_46_NonCollapsiblePostulate():
  return 264

def Prelude_46_List_46_NonEmpty(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(265, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_Errors_46_NonFunctionType():
  return 266

def Prelude_46_Nat_46_NotBothZero(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(267, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_Errors_46_NotEquality():
  return 268

def Language_46_Reflection_46_Elab_46_NotErased():
  return 269

def Language_46_Reflection_46_Errors_46_NotInjective():
  return 270

def Prelude_46_Maybe_46_Nothing():
  return 271

def Language_46_Reflection_46_NullType():
  return 272

def Prelude_46_Interfaces_46_Num(constructor_95_arg):
  return __RTS.make_tuple(273, constructor_95_arg)

def Prelude_46_Show_46_Open():
  return 274

def Prelude_46_Interfaces_46_Ord(constructor_95_arg):
  return __RTS.make_tuple(275, constructor_95_arg)

def Prelude_46_Interfaces_46_Ordering():
  return 276

def Language_46_Reflection_46_P():
  return 277

def Language_46_Reflection_46_PVTy():
  return 278

def Language_46_Reflection_46_PVar():
  return 279

def Builtins_46_Pair(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(280, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_ParentN():
  return 281

def Prelude_46_File_46_PermissionDenied():
  return 282

def Language_46_Reflection_46_Pi():
  return 283

def Language_46_Reflection_46_Elab_46_Plicity():
  return 284

def Prelude_46_Show_46_Prec():
  return 285

def Language_46_Reflection_46_Elab_46_Prefix():
  return 286

def Prelude_46_Show_46_PrefixMinus():
  return 287

def PrimIO(constructor_95_arg):
  return __RTS.make_tuple(288, constructor_95_arg)

def Language_46_Reflection_46_Elab_46_Prim_95__95_AddImplementation():
  return 289

def Language_46_Reflection_46_Elab_46_Prim_95__95_Apply():
  return 290

def Language_46_Reflection_46_Elab_46_Prim_95__95_Attack():
  return 291

def Language_46_Reflection_46_Elab_46_Prim_95__95_BindElab():
  return 292

def Language_46_Reflection_46_Elab_46_Prim_95__95_Check():
  return 293

def Language_46_Reflection_46_Elab_46_Prim_95__95_Claim():
  return 294

def Language_46_Reflection_46_Elab_46_Prim_95__95_Compute():
  return 295

def Language_46_Reflection_46_Elab_46_Prim_95__95_Converts():
  return 296

def Language_46_Reflection_46_Elab_46_Prim_95__95_Debug():
  return 297

def Language_46_Reflection_46_Elab_46_Prim_95__95_DeclareDatatype():
  return 298

def Language_46_Reflection_46_Elab_46_Prim_95__95_DeclareType():
  return 299

def Language_46_Reflection_46_Elab_46_Prim_95__95_DefineDatatype():
  return 300

def Language_46_Reflection_46_Elab_46_Prim_95__95_DefineFunction():
  return 301

def Language_46_Reflection_46_Elab_46_Prim_95__95_Env():
  return 302

def Language_46_Reflection_46_Elab_46_Prim_95__95_Fail():
  return 303

def Language_46_Reflection_46_Elab_46_Prim_95__95_Fill():
  return 304

def Language_46_Reflection_46_Elab_46_Prim_95__95_Fixity():
  return 305

def Language_46_Reflection_46_Elab_46_Prim_95__95_Focus():
  return 306

def Language_46_Reflection_46_Elab_46_Prim_95__95_Forall():
  return 307

def Language_46_Reflection_46_Elab_46_Prim_95__95_Gensym():
  return 308

def Language_46_Reflection_46_Elab_46_Prim_95__95_Goal():
  return 309

def Language_46_Reflection_46_Elab_46_Prim_95__95_Guess():
  return 310

def Language_46_Reflection_46_Elab_46_Prim_95__95_Holes():
  return 311

def Prim_95__95_IO(constructor_95_arg):
  return __RTS.make_tuple(312, constructor_95_arg)

def Language_46_Reflection_46_Elab_46_Prim_95__95_Intro():
  return 313

def Language_46_Reflection_46_Elab_46_Prim_95__95_IsTCName():
  return 314

def Language_46_Reflection_46_Elab_46_Prim_95__95_LetBind():
  return 315

def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupArgs():
  return 316

def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupDatatype():
  return 317

def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupFunDefn():
  return 318

def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupTy():
  return 319

def Language_46_Reflection_46_Elab_46_Prim_95__95_MatchApply():
  return 320

def Language_46_Reflection_46_Elab_46_Prim_95__95_Metavar():
  return 321

def Language_46_Reflection_46_Elab_46_Prim_95__95_Namespace():
  return 322

def Language_46_Reflection_46_Elab_46_Prim_95__95_Normalise():
  return 323

def Language_46_Reflection_46_Elab_46_Prim_95__95_PatBind():
  return 324

def Language_46_Reflection_46_Elab_46_Prim_95__95_PatVar():
  return 325

def Language_46_Reflection_46_Elab_46_Prim_95__95_PureElab():
  return 326

def Language_46_Reflection_46_Elab_46_Prim_95__95_RecursiveElab():
  return 327

def Language_46_Reflection_46_Elab_46_Prim_95__95_ResolveTC():
  return 328

def Language_46_Reflection_46_Elab_46_Prim_95__95_Rewrite():
  return 329

def Language_46_Reflection_46_Elab_46_Prim_95__95_Search():
  return 330

def Language_46_Reflection_46_Elab_46_Prim_95__95_Solve():
  return 331

def Language_46_Reflection_46_Elab_46_Prim_95__95_SourceLocation():
  return 332

def Language_46_Reflection_46_Elab_46_Prim_95__95_Try():
  return 333

def Language_46_Reflection_46_Elab_46_Prim_95__95_TryCatch():
  return 334

def Language_46_Reflection_46_Elab_46_Prim_95__95_Unfocus():
  return 335

def Language_46_Reflection_46_Elab_46_Prim_95__95_Whnf():
  return 336

def Language_46_Reflection_46_Errors_46_ProgramLineComment():
  return 337

def Language_46_Reflection_46_Errors_46_ProofSearchFail():
  return 338

def Prelude_46_Providers_46_Provide():
  return 339

def Prelude_46_Providers_46_Provider(constructor_95_arg):
  return __RTS.make_tuple(340, constructor_95_arg)

def Language_46_Reflection_46_Errors_46_ProviderError():
  return 341

def Ptr():
  return 342

def Language_46_Reflection_46_Quotable(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(343, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_RApp():
  return 344

def Language_46_Reflection_46_RBind():
  return 345

def Language_46_Reflection_46_RConstant():
  return 346

def Language_46_Reflection_46_RType():
  return 347

def Language_46_Reflection_46_RUType():
  return 348

def FFI_95_C_46_Raw(constructor_95_arg):
  return __RTS.make_tuple(349, constructor_95_arg)

def Language_46_Reflection_46_Raw():
  return 350

def Language_46_Reflection_46_RawPart():
  return 351

def Prelude_46_File_46_Read():
  return 352

def Ownership_46_Read():
  return 353

def Prelude_46_File_46_ReadAppend():
  return 354

def Prelude_46_File_46_ReadWrite():
  return 355

def Prelude_46_File_46_ReadWriteTruncate():
  return 356

def Language_46_Reflection_46_Ref():
  return 357

def Language_46_Reflection_46_Refine():
  return 358

def Refl():
  return 359

def Language_46_Reflection_46_ReflConst(constructor_95_arg):
  return __RTS.make_tuple(360, constructor_95_arg)

def Language_46_Reflection_46_Reflect():
  return 361

def Language_46_Reflection_46_Rewrite():
  return 362

def Prelude_46_Either_46_Right(constructor_95_arg):
  return __RTS.make_tuple(363, constructor_95_arg)

def Prelude_46_Nat_46_RightIsNotZero():
  return 364

def Prelude_46_Nat_46_S():
  return 365

def Language_46_Reflection_46_SN():
  return 366

def Language_46_Reflection_46_Search():
  return 367

def Prelude_46_Algebra_46_Semigroup(constructor_95_arg):
  return __RTS.make_tuple(368, constructor_95_arg)

def Language_46_Reflection_46_Seq():
  return 369

def Prelude_46_Show_46_Show(constructor_95_arg):
  return __RTS.make_tuple(370, constructor_95_arg)

def Prelude_46_WellFounded_46_Sized(constructor_95_arg):
  return __RTS.make_tuple(371, constructor_95_arg)

def Language_46_Reflection_46_Skip():
  return 372

def Language_46_Reflection_46_Solve():
  return 373

def Language_46_Reflection_46_SourceFC():
  return 374

def Language_46_Reflection_46_SourceLocation():
  return 375

def Language_46_Reflection_46_SpecialName():
  return 376

def Language_46_Reflection_46_Str():
  return 377

def Prelude_46_Strings_46_StrCons(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(378, constructor_95_arg, _constructor_95_arg)

def Prelude_46_Strings_46_StrM(constructor_95_arg):
  return __RTS.make_tuple(379, constructor_95_arg)

def Prelude_46_Strings_46_StrNil():
  return 380

def Language_46_Reflection_46_StrType():
  return 381

def Prelude_46_Stream_46_Stream(constructor_95_arg):
  return __RTS.make_tuple(382, constructor_95_arg)

def Prelude_46_Strings_46_StringBuffer():
  return 383

def Language_46_Reflection_46_SubReport():
  return 384

def Prelude_46_Pairs_46_Subset(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(385, constructor_95_arg, _constructor_95_arg)

def Symbol_95_(constructor_95_arg):
  return __RTS.make_tuple(386, constructor_95_arg)

def Language_46_Reflection_46_TCon():
  return 387

def Language_46_Reflection_46_TConst():
  return 388

def Language_46_Reflection_46_TT():
  return 389

def Language_46_Reflection_46_TTName():
  return 390

def Language_46_Reflection_46_TTUExp():
  return 391

def Language_46_Reflection_46_TType():
  return 392

def Language_46_Reflection_46_Tactic():
  return 393

def Language_46_Reflection_46_TermPart():
  return 394

def Language_46_Reflection_46_TextPart():
  return 395

def TheWorld(constructor_95_arg):
  return __RTS.make_tuple(396, constructor_95_arg)

def Language_46_Reflection_46_TheWorld():
  return 397

def Language_46_Reflection_46_Errors_46_TooManyArguments():
  return 398

def Prelude_46_Traversable_46_Traversable(constructor_95_arg):
  return __RTS.make_tuple(399, constructor_95_arg)

def Language_46_Reflection_46_Trivial():
  return 400

def Prelude_46_Bool_46_True():
  return 1

def Language_46_Reflection_46_Try():
  return 401

def Language_46_Reflection_46_Elab_46_TyConArg():
  return 402

def Language_46_Reflection_46_Elab_46_TyConIndex():
  return 403

def Language_46_Reflection_46_Elab_46_TyConParameter():
  return 404

def Language_46_Reflection_46_Elab_46_TyDecl():
  return 405

def Language_46_Reflection_46_UN():
  return 406

def Builtins_46_UPair(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(407, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_UType():
  return 408

def Language_46_Reflection_46_UVal():
  return 409

def Language_46_Reflection_46_UVar():
  return 410

def Language_46_Reflection_46_Unfocus():
  return 411

def Language_46_Reflection_46_Errors_46_UnifyScope():
  return 412

def Prelude_46_Uninhabited_46_Uninhabited(constructor_95_arg):
  return __RTS.make_tuple(413, constructor_95_arg)

def Language_46_Reflection_46_UniqueType():
  return 414

def Unit():
  return 415

def Language_46_Reflection_46_Universe():
  return 416

def Language_46_Reflection_46_Errors_46_UniverseError():
  return 417

def Language_46_Reflection_46_Errors_46_UnknownImplicit():
  return 418

def Prelude_46_Show_46_User():
  return 419

def Language_46_Reflection_46_V():
  return 420

def Language_46_Reflection_46_Var():
  return 421

def Void():
  return 422

def Language_46_Reflection_46_VoidType():
  return 423

def Prelude_46_WellFounded_46_WellFounded(constructor_95_arg,_constructor_95_arg):
  return __RTS.make_tuple(424, constructor_95_arg, _constructor_95_arg)

def Language_46_Reflection_46_WhereN():
  return 425

def Language_46_Reflection_46_Errors_46_WithFnType():
  return 426

def Language_46_Reflection_46_WithN():
  return 427

def World():
  return 428

def Language_46_Reflection_46_WorldType():
  return 429

def Prelude_46_File_46_WriteTruncate():
  return 430

def Prelude_46_Basics_46_Yes():
  return 431

def Prelude_46_Nat_46_Z():
  return 432

def assert_95_unreachable():
  return None

def call_95__95_IO(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return _123_APPLY_95_0_125_(_123_arg_95_2_125_, None)

def Prelude_46_List_46_dropWhile(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  valToMatch = None
  valToMatch = _123_arg_95_2_125_
  caseMerged = None
  if valToMatch == 3:
    caseMerged = _123_arg_95_2_125_

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 2:
        _123_in_95_3_125_ = None
        _123_in_95_3_125_ = __RTS.proj(valToMatch, 1)
        _123_in_95_4_125_ = None
        _123_in_95_4_125_ = __RTS.proj(valToMatch, 2)
        _valToMatch = None
        _valToMatch = _123_APPLY_95_0_125_(_123_arg_95_1_125_, _123_in_95_3_125_)
        _caseMerged = None
        if _valToMatch == False:
          _caseMerged = __RTS.make_tuple(2, _123_in_95_3_125_, _123_in_95_4_125_)

        elif _valToMatch == True:
          _caseMerged = Prelude_46_List_46_dropWhile(None, _123_arg_95_1_125_, _123_in_95_4_125_)

        else:
          __RTS.error('pattern matching failed')
          _caseMerged = None

        caseMerged = _caseMerged

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def Prelude_46_Interactive_46_getLine_39_(_123_arg_95_0_125_,_123_in_95_1_125_):
  _123_in_95_2_125_ = None
  _123_in_95_2_125_ = __RTS.op_read_str(_123_in_95_1_125_)
  valToMatch = None
  valToMatch = __RTS.op_str_eq(__RTS.op_str_rev(_123_in_95_2_125_), '')
  caseMerged = None
  if valToMatch == 0:
    caseMerged = True

  else:
    caseMerged = False

  _valToMatch = None
  _valToMatch = Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(caseMerged, True)
  _caseMerged = None
  if _valToMatch == 259:
    _caseMerged = ''

  elif _valToMatch == 431:
    __valToMatch = None
    __valToMatch = __RTS.op_str_head(__RTS.op_str_rev(_123_in_95_2_125_))
    __caseMerged = None
    if __valToMatch == '\n':
      __caseMerged = __RTS.op_str_tail(__RTS.op_str_rev(_123_in_95_2_125_))

    else:
      __caseMerged = __RTS.op_str_cons(__RTS.op_str_head(__RTS.op_str_rev(_123_in_95_2_125_)), __RTS.op_str_tail(__RTS.op_str_rev(_123_in_95_2_125_)))

    _caseMerged = __caseMerged

  else:
    __RTS.error('pattern matching failed')
    _caseMerged = None

  return __RTS.op_str_rev(_caseMerged)

def idris_95_crash():
  return None

def Prelude_46_Bool_46_ifThenElse(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  valToMatch = None
  valToMatch = _123_arg_95_1_125_
  caseMerged = None
  if valToMatch == False:
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_3_125_)

  elif valToMatch == True:
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_2_125_)

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def Prelude_46_Interfaces_46_intToBool(_123_arg_95_0_125_):
  valToMatch = None
  valToMatch = _123_arg_95_0_125_
  caseMerged = None
  if valToMatch == 0:
    caseMerged = False

  else:
    caseMerged = True

  return caseMerged

def io_95_bind(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_k_95_4_125_,_123_w_95_5_125_):
  return _123_APPLY_95_0_125_(_123_APPLY_95_0_125_(_123_k_95_4_125_, _123_APPLY_95_0_125_(_123_arg_95_3_125_, _123_w_95_5_125_)), _123_w_95_5_125_)

def io_95_pure(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_w_95_3_125_):
  return _123_arg_95_2_125_

def Prelude_46_Chars_46_isSpace(_123_arg_95_0_125_):
  valToMatch = None
  valToMatch = __RTS.op_eq(_123_arg_95_0_125_, ' ')
  caseMerged = None
  if valToMatch == 0:
    _valToMatch = None
    _valToMatch = __RTS.op_eq(_123_arg_95_0_125_, '\t')
    _caseMerged = None
    if _valToMatch == 0:
      __valToMatch = None
      __valToMatch = __RTS.op_eq(_123_arg_95_0_125_, '\r')
      __caseMerged = None
      if __valToMatch == 0:
        ___valToMatch = None
        ___valToMatch = __RTS.op_eq(_123_arg_95_0_125_, '\n')
        ___caseMerged = None
        if ___valToMatch == 0:
          ____valToMatch = None
          ____valToMatch = __RTS.op_eq(_123_arg_95_0_125_, '\x0c')
          ____caseMerged = None
          if ____valToMatch == 0:
            _____valToMatch = None
            _____valToMatch = __RTS.op_eq(_123_arg_95_0_125_, '\x0b')
            _____caseMerged = None
            if _____valToMatch == 0:
              ______valToMatch = None
              ______valToMatch = __RTS.op_eq(_123_arg_95_0_125_, '\xa0')
              ______caseMerged = None
              if ______valToMatch == 0:
                ______caseMerged = False

              else:
                ______caseMerged = True

              _____caseMerged = ______caseMerged

            else:
              _____caseMerged = True

            ____caseMerged = _____caseMerged

          else:
            ____caseMerged = True

          ___caseMerged = ____caseMerged

        else:
          ___caseMerged = True

        __caseMerged = ___caseMerged

      else:
        __caseMerged = True

      _caseMerged = __caseMerged

    else:
      _caseMerged = True

    caseMerged = _caseMerged

  else:
    caseMerged = True

  return caseMerged

def Main_46_main(_123_in_95_0_125_):
  _123_in_95_1_125_ = None
  _123_in_95_1_125_ = Prelude_46_Interactive_46_getLine_39_(None, _123_in_95_0_125_)
  return Prelude_46_Interactive_46_printLn_39_(None, None, _123_U_95_Main_46__123_main_95_1_125__95_1_125_(), Prelude_46_Foldable_46_Prelude_46_List_46__64_Prelude_46_Foldable_46_Foldable_36_List_58__33_foldr_58_0(None, None, _123_U_95_Main_46__123_main_95_2_125__95_2_125_(), 3, Prelude_46_Strings_46_words(_123_in_95_1_125_)), _123_in_95_0_125_)

def mkForeignPrim():
  return None

def Prelude_46_Bool_46_not(_123_arg_95_0_125_):
  valToMatch = None
  valToMatch = _123_arg_95_0_125_
  caseMerged = None
  if valToMatch == False:
    caseMerged = True

  elif valToMatch == True:
    caseMerged = False

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def Prelude_46_Show_46_precCon(_123_arg_95_0_125_):
  valToMatch = None
  valToMatch = _123_arg_95_0_125_
  caseMerged = None
  if valToMatch == 18:
    caseMerged = 6

  elif valToMatch == 28:
    caseMerged = 3

  elif valToMatch == 101:
    caseMerged = 2

  elif valToMatch == 109:
    caseMerged = 1

  elif valToMatch == 274:
    caseMerged = 0

  elif valToMatch == 287:
    caseMerged = 5

  elif valToMatch == 419:
    caseMerged = 4

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def Prelude_46_Show_46_primNumShow(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  _123_in_95_4_125_ = None
  _123_in_95_4_125_ = _123_APPLY_95_0_125_(_123_arg_95_1_125_, _123_arg_95_3_125_)
  valToMatch = None
  valToMatch = _123_arg_95_2_125_
  caseMerged = None
  if valToMatch == 18:
    caseMerged = 6

  elif valToMatch == 28:
    caseMerged = 3

  elif valToMatch == 101:
    caseMerged = 2

  elif valToMatch == 109:
    caseMerged = 1

  elif valToMatch == 274:
    caseMerged = 0

  elif valToMatch == 287:
    caseMerged = 5

  elif valToMatch == 419:
    caseMerged = 4

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  _valToMatch = None
  _valToMatch = Prelude_46_Interfaces_46_Prelude_46_Interfaces_46__64_Prelude_46_Interfaces_46_Ord_36_Integer_58__33_compare_58_0(caseMerged, 5)
  ___caseMerged = None
  if _valToMatch == 154:
    ___caseMerged = True

  else:
    __valToMatch = None
    __valToMatch = _123_arg_95_2_125_
    _caseMerged = None
    if __valToMatch == 18:
      _caseMerged = 6

    elif __valToMatch == 28:
      _caseMerged = 3

    elif __valToMatch == 101:
      _caseMerged = 2

    elif __valToMatch == 109:
      _caseMerged = 1

    elif __valToMatch == 274:
      _caseMerged = 0

    elif __valToMatch == 287:
      _caseMerged = 5

    elif __valToMatch == 419:
      _caseMerged = 4

    else:
      __RTS.error('pattern matching failed')
      _caseMerged = None

    ___valToMatch = None
    ___valToMatch = __RTS.op_eq(_caseMerged, 5)
    __caseMerged = None
    if ___valToMatch == 0:
      __caseMerged = False

    else:
      __caseMerged = True

    ___caseMerged = __caseMerged

  ____valToMatch = None
  ____valToMatch = ___caseMerged
  ____caseMerged = None
  if ____valToMatch == False:
    ____caseMerged = False

  elif ____valToMatch == True:
    _____valToMatch = None
    _____valToMatch = __RTS.op_str_eq(_123_in_95_4_125_, '')
    _____caseMerged = None
    if _____valToMatch == 0:
      _____caseMerged = True

    else:
      _____caseMerged = False

    ______valToMatch = None
    ______valToMatch = Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(_____caseMerged, True)
    ______caseMerged = None
    if ______valToMatch == 259:
      ______caseMerged = False

    elif ______valToMatch == 431:
      _______valToMatch = None
      _______valToMatch = __RTS.op_eq(__RTS.op_str_head(_123_in_95_4_125_), '-')
      _______caseMerged = None
      if _______valToMatch == 0:
        _______caseMerged = False

      else:
        _______caseMerged = True

      ______caseMerged = _______caseMerged

    else:
      __RTS.error('pattern matching failed')
      ______caseMerged = None

    ____caseMerged = ______caseMerged

  else:
    __RTS.error('pattern matching failed')
    ____caseMerged = None

  _____valToMatch = None
  _____valToMatch = ____caseMerged
  _____caseMerged = None
  if _____valToMatch == False:
    _____caseMerged = _123_in_95_4_125_

  elif _____valToMatch == True:
    _____caseMerged = __RTS.op_str_concat('(', __RTS.op_str_concat(_123_in_95_4_125_, ')'))

  else:
    __RTS.error('pattern matching failed')
    _____caseMerged = None

  return _____caseMerged

def prim_95__95_asPtr(_123_arg_95_0_125_):
  return __RTS.op_external(_123_arg_95_0_125_)

def prim_95__95_concat(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_str_concat(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_eqBigInt(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_eq(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_eqChar(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_eq(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_eqManagedPtr(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_eqPtr(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_eqString(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_str_eq(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_fromStrBigInt(_123_arg_95_0_125_):
  return __RTS.op_str_int(_123_arg_95_0_125_)

def prim_95__95_managedNull():
  return __RTS.op_external()

def prim_95__95_null():
  return __RTS.op_external()

def prim_95__95_peek16(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_)

def prim_95__95_peek32(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_)

def prim_95__95_peek64(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_)

def prim_95__95_peek8(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_)

def prim_95__95_peekDouble(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_)

def prim_95__95_peekPtr(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_)

def prim_95__95_peekSingle(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_)

def prim_95__95_poke16(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_, _123_arg_95_3_125_)

def prim_95__95_poke32(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_, _123_arg_95_3_125_)

def prim_95__95_poke64(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_, _123_arg_95_3_125_)

def prim_95__95_poke8(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_, _123_arg_95_3_125_)

def prim_95__95_pokeDouble(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_, _123_arg_95_3_125_)

def prim_95__95_pokePtr(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_, _123_arg_95_3_125_)

def prim_95__95_pokeSingle(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_, _123_arg_95_3_125_)

def prim_95__95_ptrOffset(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_readChars(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_)

def prim_95__95_readFile(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_readString(_123_arg_95_0_125_):
  return __RTS.op_read_str(_123_arg_95_0_125_)

def prim_95__95_registerPtr(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_sizeofPtr():
  return __RTS.op_external()

def prim_95__95_sltBigInt(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_slt(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_stderr():
  return __RTS.op_external()

def prim_95__95_stdin():
  return __RTS.op_external()

def prim_95__95_stdout():
  return __RTS.op_external()

def prim_95__95_strCons(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_str_cons(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95__95_strHead(_123_arg_95_0_125_):
  return __RTS.op_str_head(_123_arg_95_0_125_)

def prim_95__95_strRev(_123_arg_95_0_125_):
  return __RTS.op_str_rev(_123_arg_95_0_125_)

def prim_95__95_strTail(_123_arg_95_0_125_):
  return __RTS.op_str_tail(_123_arg_95_0_125_)

def prim_95__95_toStrBigInt(_123_arg_95_0_125_):
  return __RTS.op_int_str(_123_arg_95_0_125_)

def prim_95__95_vm(_123_arg_95_0_125_):
  return __RTS.op_external(_123_arg_95_0_125_)

def prim_95__95_writeFile(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  return __RTS.op_external(_123_arg_95_0_125_, _123_arg_95_1_125_, _123_arg_95_2_125_)

def prim_95__95_writeString(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return __RTS.op_write_str(_123_arg_95_0_125_, _123_arg_95_1_125_)

def prim_95_io_95_bind(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  return _123_APPLY_95_0_125_(_123_arg_95_3_125_, _123_arg_95_2_125_)

def Prelude_46_Interactive_46_printLn_39_(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_in_95_4_125_):
  _123_in_95_5_125_ = None
  _123_in_95_5_125_ = __RTS.op_write_str(_123_in_95_4_125_, __RTS.op_str_concat(_123_APPLY_95_0_125_(_123_arg_95_2_125_, _123_arg_95_3_125_), '\n'))
  return None

def run_95__95_IO(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return _123_APPLY_95_0_125_(_123_arg_95_1_125_, None)

def Prelude_46_Show_46_show(_123_arg_95_0_125_,_123_arg_95_1_125_):
  return _123_arg_95_1_125_

def Prelude_46_Show_46_showParens(_123_arg_95_0_125_,_123_arg_95_1_125_):
  valToMatch = None
  valToMatch = _123_arg_95_0_125_
  caseMerged = None
  if valToMatch == False:
    caseMerged = _123_arg_95_1_125_

  elif valToMatch == True:
    caseMerged = __RTS.op_str_concat('(', __RTS.op_str_concat(_123_arg_95_1_125_, ')'))

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def Prelude_46_List_46_span(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  valToMatch = None
  valToMatch = _123_arg_95_2_125_
  caseMerged = None
  if valToMatch == 3:
    caseMerged = __RTS.make_tuple(242, 3, 3)

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 2:
        _123_in_95_3_125_ = None
        _123_in_95_3_125_ = __RTS.proj(valToMatch, 1)
        _123_in_95_4_125_ = None
        _123_in_95_4_125_ = __RTS.proj(valToMatch, 2)
        _valToMatch = None
        _valToMatch = _123_APPLY_95_0_125_(_123_arg_95_1_125_, _123_in_95_3_125_)
        _caseMerged = None
        if _valToMatch == False:
          _caseMerged = __RTS.make_tuple(242, 3, __RTS.make_tuple(2, _123_in_95_3_125_, _123_in_95_4_125_))

        elif _valToMatch == True:
          __valToMatch = None
          __valToMatch = Prelude_46_List_46_span(None, _123_arg_95_1_125_, _123_in_95_4_125_)
          __caseMerged = None
          if __RTS.is_tuple(__valToMatch):
            if __RTS.proj(__valToMatch, 0) == 242:
              _123_in_95_5_125_ = None
              _123_in_95_5_125_ = __RTS.proj(__valToMatch, 1)
              _123_in_95_6_125_ = None
              _123_in_95_6_125_ = __RTS.proj(__valToMatch, 2)
              __caseMerged = __RTS.make_tuple(242, __RTS.make_tuple(2, _123_in_95_3_125_, _123_in_95_5_125_), _123_in_95_6_125_)

            else:
              __RTS.error('pattern matching failed')
              __caseMerged = None


          else:
            __RTS.error('pattern matching failed')
            __caseMerged = None

          _caseMerged = __caseMerged

        else:
          __RTS.error('pattern matching failed')
          _caseMerged = None

        caseMerged = _caseMerged

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def Prelude_46_Strings_46_unpack(_123_arg_95_0_125_):
  valToMatch = None
  valToMatch = __RTS.op_str_eq(_123_arg_95_0_125_, '')
  caseMerged = None
  if valToMatch == 0:
    caseMerged = True

  else:
    caseMerged = False

  _valToMatch = None
  _valToMatch = Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(caseMerged, True)
  _caseMerged = None
  if _valToMatch == 259:
    _caseMerged = 3

  elif _valToMatch == 431:
    _caseMerged = __RTS.make_tuple(2, __RTS.op_str_head(_123_arg_95_0_125_), Prelude_46_Strings_46_unpack(__RTS.op_str_tail(_123_arg_95_0_125_)))

  else:
    __RTS.error('pattern matching failed')
    _caseMerged = None

  return _caseMerged

def unsafePerformPrimIO():
  return None

def Prelude_46_Strings_46_words(_123_arg_95_0_125_):
  valToMatch = None
  valToMatch = __RTS.op_str_eq(_123_arg_95_0_125_, '')
  caseMerged = None
  if valToMatch == 0:
    caseMerged = True

  else:
    caseMerged = False

  _valToMatch = None
  _valToMatch = Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(caseMerged, True)
  _caseMerged = None
  if _valToMatch == 259:
    _caseMerged = 3

  elif _valToMatch == 431:
    __valToMatch = None
    __valToMatch = __RTS.op_str_eq(__RTS.op_str_tail(_123_arg_95_0_125_), '')
    __caseMerged = None
    if __valToMatch == 0:
      __caseMerged = True

    else:
      __caseMerged = False

    ___valToMatch = None
    ___valToMatch = Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(__caseMerged, True)
    ___caseMerged = None
    if ___valToMatch == 259:
      ___caseMerged = 380

    elif ___valToMatch == 431:
      ___caseMerged = __RTS.make_tuple(378, __RTS.op_str_head(__RTS.op_str_tail(_123_arg_95_0_125_)), __RTS.op_str_tail(__RTS.op_str_tail(_123_arg_95_0_125_)))

    else:
      __RTS.error('pattern matching failed')
      ___caseMerged = None

    _caseMerged = __RTS.make_tuple(2, __RTS.op_str_head(_123_arg_95_0_125_), _95_Prelude_46_Strings_46_unpack_95_with_95_36(None, ___caseMerged))

  else:
    __RTS.error('pattern matching failed')
    _caseMerged = None

  return Prelude_46_Functor_46_Prelude_46_List_46__64_Prelude_46_Functor_46_Functor_36_List_58__33_map_58_0(None, None, _123_U_95_Prelude_46_Strings_46__123_words_95_3_125__95_1_125_(), Prelude_46_Strings_46_words_39_(_caseMerged))

def Prelude_46_Strings_46_words_39_(_123_arg_95_0_125_):
  valToMatch = None
  valToMatch = Prelude_46_List_46_dropWhile(None, _123_U_95_Prelude_46_Chars_46_isSpace_95_1_125_(), _123_arg_95_0_125_)
  _caseMerged = None
  if valToMatch == 3:
    _caseMerged = 3

  else:
    _valToMatch = None
    _valToMatch = Prelude_46_List_46_span(None, _123_U_95_Prelude_46_Strings_46__123_words_39__95_4_125__95_1_125_(), Prelude_46_List_46_dropWhile(None, _123_U_95_Prelude_46_Chars_46_isSpace_95_1_125_(), _123_arg_95_0_125_))
    caseMerged = None
    if __RTS.is_tuple(_valToMatch):
      if __RTS.proj(_valToMatch, 0) == 242:
        _123_in_95_4_125_ = None
        _123_in_95_4_125_ = __RTS.proj(_valToMatch, 1)
        _123_in_95_5_125_ = None
        _123_in_95_5_125_ = __RTS.proj(_valToMatch, 2)
        caseMerged = __RTS.make_tuple(2, _123_in_95_4_125_, Prelude_46_Strings_46_words_39_(_123_in_95_5_125_))

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    _caseMerged = caseMerged

  return _caseMerged

def world(_123_arg_95_0_125_):
  return _123_arg_95_0_125_

def Prelude_46_Bool_46__124__124_(_123_arg_95_0_125_,_123_arg_95_1_125_):
  valToMatch = None
  valToMatch = _123_arg_95_0_125_
  caseMerged = None
  if valToMatch == False:
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_1_125_)

  elif valToMatch == True:
    caseMerged = _123_arg_95_0_125_

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def _123_APPLY_95_0_125_(_123_fn_95_0_125_,_123_arg_95_0_125_):
  valToMatch = None
  valToMatch = _123_fn_95_0_125_
  caseMerged = None
  if valToMatch == 433:
    caseMerged = Main_46__123_main_95_0_125_(_123_arg_95_0_125_)

  elif valToMatch == 434:
    caseMerged = Main_46__123_main_95_1_125_(_123_arg_95_0_125_)

  elif valToMatch == 436:
    caseMerged = Prelude_46_Chars_46_isSpace(_123_arg_95_0_125_)

  elif valToMatch == 437:
    caseMerged = Prelude_46_Strings_46__123_words_39__95_4_125_(_123_arg_95_0_125_)

  elif valToMatch == 438:
    caseMerged = Prelude_46_Strings_46__123_words_95_3_125_(_123_arg_95_0_125_)

  elif valToMatch == 440:
    caseMerged = prim_95__95_toStrBigInt(_123_arg_95_0_125_)

  elif valToMatch == 441:
    caseMerged = _123_U_95_Main_46__123_main_95_2_125__95_1_125_(_123_arg_95_0_125_)

  elif valToMatch == 442:
    caseMerged = _123_U_95_prim_95__95_strCons_95_1_125_(_123_arg_95_0_125_)

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 435:
        _123_P_95_c_95_0_125_ = None
        _123_P_95_c_95_0_125_ = __RTS.proj(valToMatch, 1)
        caseMerged = Main_46__123_main_95_2_125_(_123_P_95_c_95_0_125_, _123_arg_95_0_125_)

      elif __RTS.proj(valToMatch, 0) == 439:
        _123_P_95_c_95_0_125_ = None
        _123_P_95_c_95_0_125_ = __RTS.proj(valToMatch, 1)
        caseMerged = prim_95__95_strCons(_123_P_95_c_95_0_125_, _123_arg_95_0_125_)

      else:
        caseMerged = None


    else:
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def _123_APPLY2_95_0_125_(_123_fn_95_0_125_,_123_arg0_95_0_125_,_123_arg1_95_0_125_):
  valToMatch = None
  valToMatch = _123_fn_95_0_125_
  caseMerged = None
  if valToMatch == 441:
    caseMerged = Main_46__123_main_95_2_125_(_123_arg0_95_0_125_, _123_arg1_95_0_125_)

  elif valToMatch == 442:
    caseMerged = prim_95__95_strCons(_123_arg0_95_0_125_, _123_arg1_95_0_125_)

  else:
    caseMerged = _123_APPLY_95_0_125_(_123_APPLY_95_0_125_(_123_fn_95_0_125_, _123_arg0_95_0_125_), _123_arg1_95_0_125_)

  return caseMerged

def _123_EVAL_95_0_125_(_123_arg_95_0_125_):
  valToMatch = None
  valToMatch = _123_arg_95_0_125_
  caseMerged = None
  return _123_arg_95_0_125_

def _123__95__95_Infer_95_0_125_():
  return 443

def _123__95__95_infer_95_0_125_():
  return 444

def Main_46__123_main_95_0_125_(_123_lift_95_0_125_):
  return Prelude_46_Show_46_primNumShow(None, _123_U_95_prim_95__95_toStrBigInt_95_1_125_(), 274, _123_lift_95_0_125_)

def _123_runMain_95_0_125_():
  return _123_EVAL_95_0_125_(Main_46_main(None))

def _123_U_95_Main_46__123_main_95_0_125__95_1_125_():
  return 433

def _123_U_95_Main_46__123_main_95_1_125__95_1_125_():
  return 434

def _123_U_95_Main_46__123_main_95_2_125__95_1_125_(constructor_95_arg):
  return __RTS.make_tuple(435, constructor_95_arg)

def _123_U_95_Prelude_46_Chars_46_isSpace_95_1_125_():
  return 436

def _123_U_95_Prelude_46_Strings_46__123_words_39__95_4_125__95_1_125_():
  return 437

def _123_U_95_Prelude_46_Strings_46__123_words_95_3_125__95_1_125_():
  return 438

def _123_U_95_prim_95__95_strCons_95_1_125_(constructor_95_arg):
  return __RTS.make_tuple(439, constructor_95_arg)

def _123_U_95_prim_95__95_toStrBigInt_95_1_125_():
  return 440

def Main_46__123_main_95_1_125_(_123_lift_95_0_125_):
  return __RTS.op_str_concat('[', __RTS.op_str_concat(Prelude_46_Show_46_Prelude_46_Show_46__64_Prelude_46_Show_46_Show_36_List_32_a_58__33_show_58_0_58_show_39__58_0(None, None, _123_U_95_Main_46__123_main_95_0_125__95_1_125_(), '', _123_lift_95_0_125_), ']'))

def _123_U_95_Main_46__123_main_95_2_125__95_2_125_():
  return 441

def _123_U_95_prim_95__95_strCons_95_2_125_():
  return 442

def Main_46__123_main_95_2_125_(_123_lift_95_0_125_,_123_lift_95_1_125_):
  return Prelude_46_List_46__43__43_(None, __RTS.make_tuple(2, __RTS.op_str_int(_123_lift_95_0_125_), 3), _123_lift_95_1_125_)

def Prelude_46_Strings_46__123_words_95_3_125_(_123_lift_95_0_125_):
  return Prelude_46_Foldable_46_Prelude_46_List_46__64_Prelude_46_Foldable_46_Foldable_36_List_58__33_foldr_58_0(None, None, _123_U_95_prim_95__95_strCons_95_2_125_(), '', _123_lift_95_0_125_)

def Prelude_46_Strings_46__123_words_39__95_4_125_(_123_lift_95_0_125_):
  valToMatch = None
  valToMatch = Prelude_46_Chars_46_isSpace(_123_lift_95_0_125_)
  caseMerged = None
  if valToMatch == False:
    caseMerged = True

  elif valToMatch == True:
    caseMerged = False

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def Prelude_46_Show_46_Prelude_46_Show_46__64_Prelude_46_Show_46_Show_36_List_32_a_58__33_show_58_0_58_show_39__58_0(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_arg_95_4_125_):
  valToMatch = None
  valToMatch = _123_arg_95_4_125_
  caseMerged = None
  if valToMatch == 3:
    caseMerged = _123_arg_95_3_125_

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 2:
        _123_in_95_5_125_ = None
        _123_in_95_5_125_ = __RTS.proj(valToMatch, 1)
        _123_in_95_6_125_ = None
        _123_in_95_6_125_ = __RTS.proj(valToMatch, 2)
        _valToMatch = None
        _valToMatch = _123_in_95_6_125_
        _caseMerged = None
        if _valToMatch == 3:
          _caseMerged = __RTS.op_str_concat(_123_arg_95_3_125_, _123_APPLY_95_0_125_(_123_arg_95_2_125_, _123_in_95_5_125_))

        else:
          _caseMerged = Prelude_46_Show_46_Prelude_46_Show_46__64_Prelude_46_Show_46_Show_36_List_32_a_58__33_show_58_0_58_show_39__58_0(None, None, _123_arg_95_2_125_, __RTS.op_str_concat(_123_arg_95_3_125_, __RTS.op_str_concat(_123_APPLY_95_0_125_(_123_arg_95_2_125_, _123_in_95_5_125_), ', ')), _123_in_95_6_125_)

        caseMerged = _caseMerged

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(_123_arg_95_0_125_,_123_arg_95_1_125_):
  valToMatch = None
  valToMatch = _123_arg_95_1_125_
  caseMerged = None
  if valToMatch == False:
    _valToMatch = None
    _valToMatch = _123_arg_95_0_125_
    _caseMerged = None
    if _valToMatch == False:
      _caseMerged = 431

    elif _valToMatch == True:
      _caseMerged = 259

    else:
      __RTS.error('pattern matching failed')
      _caseMerged = None

    caseMerged = _caseMerged

  elif valToMatch == True:
    _valToMatch = None
    _valToMatch = _123_arg_95_0_125_
    _caseMerged = None
    if _valToMatch == False:
      _caseMerged = 259

    elif _valToMatch == True:
      _caseMerged = 431

    else:
      __RTS.error('pattern matching failed')
      _caseMerged = None

    caseMerged = _caseMerged

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def Prelude_46_Foldable_46_Prelude_46_List_46__64_Prelude_46_Foldable_46_Foldable_36_List_58__33_foldr_58_0(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_arg_95_4_125_):
  valToMatch = None
  valToMatch = _123_arg_95_4_125_
  caseMerged = None
  if valToMatch == 3:
    caseMerged = _123_arg_95_3_125_

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 2:
        _123_in_95_5_125_ = None
        _123_in_95_5_125_ = __RTS.proj(valToMatch, 1)
        _123_in_95_6_125_ = None
        _123_in_95_6_125_ = __RTS.proj(valToMatch, 2)
        caseMerged = _123_APPLY_95_0_125_(_123_APPLY_95_0_125_(_123_arg_95_2_125_, _123_in_95_5_125_), Prelude_46_Foldable_46_Prelude_46_List_46__64_Prelude_46_Foldable_46_Foldable_36_List_58__33_foldr_58_0(None, None, _123_arg_95_2_125_, _123_arg_95_3_125_, _123_in_95_6_125_))

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def Prelude_46_Functor_46_Prelude_46_List_46__64_Prelude_46_Functor_46_Functor_36_List_58__33_map_58_0(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_):
  valToMatch = None
  valToMatch = _123_arg_95_3_125_
  caseMerged = None
  if valToMatch == 3:
    caseMerged = _123_arg_95_3_125_

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 2:
        _123_in_95_4_125_ = None
        _123_in_95_4_125_ = __RTS.proj(valToMatch, 1)
        _123_in_95_5_125_ = None
        _123_in_95_5_125_ = __RTS.proj(valToMatch, 2)
        caseMerged = __RTS.make_tuple(2, _123_APPLY_95_0_125_(_123_arg_95_2_125_, _123_in_95_4_125_), Prelude_46_Functor_46_Prelude_46_List_46__64_Prelude_46_Functor_46_Functor_36_List_58__33_map_58_0(None, None, _123_arg_95_2_125_, _123_in_95_5_125_))

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def Prelude_46_Interfaces_46_Prelude_46_Interfaces_46__64_Prelude_46_Interfaces_46_Ord_36_Integer_58__33_compare_58_0(_123_arg_95_0_125_,_123_arg_95_1_125_):
  valToMatch = None
  valToMatch = __RTS.op_eq(_123_arg_95_0_125_, _123_arg_95_1_125_)
  caseMerged = None
  if valToMatch == 0:
    _valToMatch = None
    _valToMatch = __RTS.op_slt(_123_arg_95_0_125_, _123_arg_95_1_125_)
    _caseMerged = None
    if _valToMatch == 0:
      _caseMerged = 154

    else:
      _caseMerged = 213

    caseMerged = _caseMerged

  else:
    caseMerged = 102

  return caseMerged

def _95_Prelude_46_Interactive_46_getLine_39__58_trimNL_58_0_95_with_95_18(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  valToMatch = None
  valToMatch = _123_arg_95_2_125_
  caseMerged = None
  if valToMatch == 380:
    caseMerged = ''

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 378:
        _123_in_95_3_125_ = None
        _123_in_95_3_125_ = __RTS.proj(valToMatch, 1)
        _123_in_95_4_125_ = None
        _123_in_95_4_125_ = __RTS.proj(valToMatch, 2)
        _valToMatch = None
        _valToMatch = _123_in_95_3_125_
        _caseMerged = None
        if _valToMatch == '\n':
          _caseMerged = _123_in_95_4_125_

        else:
          _caseMerged = __RTS.op_str_cons(_123_in_95_3_125_, _123_in_95_4_125_)

        caseMerged = _caseMerged

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def _95_Prelude_46_Interfaces_46_Prelude_46_Show_46__64_Prelude_46_Interfaces_46_Ord_36_Prec_58__33__62__58_0_95_with_95_28(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  valToMatch = None
  valToMatch = _123_arg_95_0_125_
  caseMerged = None
  if valToMatch == 154:
    caseMerged = True

  else:
    caseMerged = False

  return caseMerged

def _95_Prelude_46_Strings_46_strM_95_with_95_33(_123_arg_95_0_125_,_123_arg_95_1_125_):
  valToMatch = None
  valToMatch = _123_arg_95_1_125_
  caseMerged = None
  if valToMatch == 259:
    caseMerged = 380

  elif valToMatch == 431:
    caseMerged = __RTS.make_tuple(378, __RTS.op_str_head(_123_arg_95_0_125_), __RTS.op_str_tail(_123_arg_95_0_125_))

  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def _95_Prelude_46_Strings_46_unpack_95_with_95_36(_123_arg_95_0_125_,_123_arg_95_1_125_):
  valToMatch = None
  valToMatch = _123_arg_95_1_125_
  caseMerged = None
  if valToMatch == 380:
    caseMerged = 3

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 378:
        _123_in_95_2_125_ = None
        _123_in_95_2_125_ = __RTS.proj(valToMatch, 1)
        _123_in_95_3_125_ = None
        _123_in_95_3_125_ = __RTS.proj(valToMatch, 2)
        _valToMatch = None
        _valToMatch = __RTS.op_str_eq(_123_in_95_3_125_, '')
        _caseMerged = None
        if _valToMatch == 0:
          _caseMerged = True

        else:
          _caseMerged = False

        __valToMatch = None
        __valToMatch = Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(_caseMerged, True)
        __caseMerged = None
        if __valToMatch == 259:
          __caseMerged = 380

        elif __valToMatch == 431:
          __caseMerged = __RTS.make_tuple(378, __RTS.op_str_head(_123_in_95_3_125_), __RTS.op_str_tail(_123_in_95_3_125_))

        else:
          __RTS.error('pattern matching failed')
          __caseMerged = None

        caseMerged = __RTS.make_tuple(2, _123_in_95_2_125_, _95_Prelude_46_Strings_46_unpack_95_with_95_36(None, __caseMerged))

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def _95_Prelude_46_Show_46_firstCharIs_95_with_95_46(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  valToMatch = None
  valToMatch = _123_arg_95_2_125_
  caseMerged = None
  if valToMatch == 380:
    caseMerged = False

  else:
    if __RTS.is_tuple(valToMatch):
      if __RTS.proj(valToMatch, 0) == 378:
        _123_in_95_3_125_ = None
        _123_in_95_3_125_ = __RTS.proj(valToMatch, 1)
        _123_in_95_4_125_ = None
        _123_in_95_4_125_ = __RTS.proj(valToMatch, 2)
        caseMerged = _123_APPLY_95_0_125_(_123_arg_95_0_125_, _123_in_95_3_125_)

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    caseMerged = caseMerged

  return caseMerged

def Prelude_46_List_46_span_95__95__95__95__95_Prelude_95__95_List_95__95_idr_95_652_95_9_95_652_95_16_95_case(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_arg_95_4_125_):
  valToMatch = None
  valToMatch = _123_arg_95_4_125_
  caseMerged = None
  if __RTS.is_tuple(valToMatch):
    if __RTS.proj(valToMatch, 0) == 242:
      _123_in_95_5_125_ = None
      _123_in_95_5_125_ = __RTS.proj(valToMatch, 1)
      _123_in_95_6_125_ = None
      _123_in_95_6_125_ = __RTS.proj(valToMatch, 2)
      caseMerged = __RTS.make_tuple(242, __RTS.make_tuple(2, _123_arg_95_2_125_, _123_in_95_5_125_), _123_in_95_6_125_)

    else:
      __RTS.error('pattern matching failed')
      caseMerged = None


  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def Prelude_46_Strings_46_words_39__95__95__95__95__95_Prelude_95__95_Strings_95__95_idr_95_283_95_17_95_283_95_35_95_case(_123_arg_95_0_125_,_123_arg_95_1_125_):
  valToMatch = None
  valToMatch = _123_arg_95_1_125_
  _caseMerged = None
  if valToMatch == 3:
    _caseMerged = _123_arg_95_1_125_

  else:
    _valToMatch = None
    _valToMatch = Prelude_46_List_46_span(None, _123_U_95_Prelude_46_Strings_46__123_words_39__95_4_125__95_1_125_(), _123_arg_95_1_125_)
    caseMerged = None
    if __RTS.is_tuple(_valToMatch):
      if __RTS.proj(_valToMatch, 0) == 242:
        _123_in_95_5_125_ = None
        _123_in_95_5_125_ = __RTS.proj(_valToMatch, 1)
        _123_in_95_6_125_ = None
        _123_in_95_6_125_ = __RTS.proj(_valToMatch, 2)
        caseMerged = __RTS.make_tuple(2, _123_in_95_5_125_, Prelude_46_Strings_46_words_39_(_123_in_95_6_125_))

      else:
        __RTS.error('pattern matching failed')
        caseMerged = None


    else:
      __RTS.error('pattern matching failed')
      caseMerged = None

    _caseMerged = caseMerged

  return _caseMerged

def Prelude_46_Strings_46_words_39__95__95__95__95__95_Prelude_95__95_Strings_95__95_idr_95_283_95_17_95_283_95_35_95_case_95__95__95__95__95_Prelude_95__95_Strings_95__95_idr_95_285_95_23_95_285_95_30_95_case(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_):
  valToMatch = None
  valToMatch = _123_arg_95_2_125_
  caseMerged = None
  if __RTS.is_tuple(valToMatch):
    if __RTS.proj(valToMatch, 0) == 242:
      _123_in_95_3_125_ = None
      _123_in_95_3_125_ = __RTS.proj(valToMatch, 1)
      _123_in_95_4_125_ = None
      _123_in_95_4_125_ = __RTS.proj(valToMatch, 2)
      caseMerged = __RTS.make_tuple(2, _123_in_95_3_125_, Prelude_46_Strings_46_words_39_(_123_in_95_4_125_))

    else:
      __RTS.error('pattern matching failed')
      caseMerged = None


  else:
    __RTS.error('pattern matching failed')
    caseMerged = None

  return caseMerged

def io_95_bind_95_IO_95__95_idr_95_108_95_34_95_108_95_36_95_case(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_arg_95_4_125_,_123_arg_95_5_125_,_123_arg_95_6_125_,_123_arg_95_7_125_):
  return _123_APPLY_95_0_125_(_123_arg_95_7_125_, _123_arg_95_5_125_)

def Prelude_46_Interfaces_46_Abs_95_ictor():
  return 445

def Prelude_46_Applicative_46_Alternative_95_ictor():
  return 446

def Prelude_46_Applicative_46_Applicative_95_ictor():
  return 447

def Prelude_46_Cast_46_Cast_95_ictor():
  return 448

def Decidable_46_Equality_46_DecEq_95_ictor():
  return 449

def Prelude_46_Enum_95_ictor():
  return 450

def Prelude_46_Interfaces_46_Eq_95_ictor():
  return 451

def Prelude_46_Foldable_46_Foldable_95_ictor():
  return 452

def Prelude_46_Interfaces_46_Fractional_95_ictor():
  return 453

def Prelude_46_Functor_46_Functor_95_ictor():
  return 454

def Prelude_46_Interfaces_46_Integral_95_ictor():
  return 455

def Prelude_46_Interfaces_46_MaxBound_95_ictor():
  return 456

def Prelude_46_Interfaces_46_MinBound_95_ictor():
  return 457

def Prelude_46_Monad_46_Monad_95_ictor():
  return 458

def Prelude_46_Algebra_46_Monoid_95_ictor():
  return 459

def Prelude_46_Interfaces_46_Neg_95_ictor():
  return 460

def Prelude_46_Interfaces_46_Num_95_ictor():
  return 461

def Prelude_46_Interfaces_46_Ord_95_ictor():
  return 462

def Language_46_Reflection_46_Quotable_95_ictor():
  return 463

def Language_46_Reflection_46_ReflConst_95_ictor():
  return 464

def Prelude_46_Algebra_46_Semigroup_95_ictor():
  return 465

def Prelude_46_Show_46_Show_95_ictor(constructor_95_arg):
  return __RTS.make_tuple(466, constructor_95_arg)

def Prelude_46_WellFounded_46_Sized_95_ictor():
  return 467

def Prelude_46_Traversable_46_Traversable_95_ictor():
  return 468

def Prelude_46_Uninhabited_46_Uninhabited_95_ictor():
  return 469

def Prelude_46_WellFounded_46_WellFounded_95_ictor():
  return 470

_123_runMain_95_0_125_()
