require_relative 'idris_rts'
$__RTS = IdrisRTS::new
def Prelude_46_Bool_46__38__38_(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == true
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_1_125_)

  elsif valToMatch == false
    caseMerged = _123_arg_95_0_125_

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def ForeignEnv_46__58__58_()
  return 2

end
def Prelude_46_List_46__58__58_(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(3,constructor_95_arg,_constructor_95_arg)

end
def Prelude_46_Stream_46__58__58_(constructor_95_arg)
  return $__RTS.make_tuple(4,constructor_95_arg)

end
def _61_(constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)
  return $__RTS.make_tuple(5,constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)

end
def Language_46_Reflection_46_ATDouble()
  return 6

end
def Language_46_Reflection_46_ATInt()
  return 7

end
def Language_46_Reflection_46_AType()
  return 8

end
def Prelude_46_Interfaces_46_Abs(constructor_95_arg)
  return $__RTS.make_tuple(9,constructor_95_arg)

end
def Prelude_46_WellFounded_46_Access()
  return 10

end
def Prelude_46_WellFounded_46_Accessible(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(11,constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def Prelude_46_Nat_46_Additive()
  return 12

end
def Language_46_Reflection_46_AllTypes()
  return 13

end
def Language_46_Reflection_46_Errors_46_AlreadyDefined()
  return 14

end
def Prelude_46_Applicative_46_Alternative(constructor_95_arg)
  return $__RTS.make_tuple(15,constructor_95_arg)

end
def Language_46_Reflection_46_App()
  return 16

end
def Prelude_46_Show_46_App()
  return 17

end
def Prelude_46_File_46_Append()
  return 18

end
def Prelude_46_Applicative_46_Applicative(constructor_95_arg)
  return $__RTS.make_tuple(19,constructor_95_arg)

end
def Language_46_Reflection_46_ApplyTactic()
  return 20

end
def Language_46_Reflection_46_ArithTy()
  return 21

end
def Language_46_Reflection_46_B16()
  return 22

end
def Language_46_Reflection_46_B32()
  return 23

end
def Language_46_Reflection_46_B64()
  return 24

end
def Language_46_Reflection_46_B8()
  return 25

end
def Language_46_Reflection_46_BI()
  return 26

end
def Prelude_46_Show_46_Backtick()
  return 27

end
def Language_46_Reflection_46_Bind()
  return 28

end
def Language_46_Reflection_46_Binder(constructor_95_arg)
  return $__RTS.make_tuple(29,constructor_95_arg)

end
def Prelude_46_Bool_46_Bool()
  return 30

end
def Ownership_46_Borrowed(constructor_95_arg)
  return $__RTS.make_tuple(31,constructor_95_arg)

end
def Language_46_Reflection_46_Bound()
  return 32

end
def Language_46_Reflection_46_ByReflection()
  return 33

end
def CData()
  return 34

end
def FFI_95_C_46_CFnPtr(constructor_95_arg)
  return $__RTS.make_tuple(35,constructor_95_arg)

end
def FFI_95_C_46_C_95_Any()
  return 36

end
def FFI_95_C_46_C_95_CData()
  return 37

end
def FFI_95_C_46_C_95_Float()
  return 38

end
def FFI_95_C_46_C_95_Fn()
  return 39

end
def FFI_95_C_46_C_95_FnBase()
  return 40

end
def FFI_95_C_46_C_95_FnIO()
  return 41

end
def FFI_95_C_46_C_95_FnT()
  return 42

end
def FFI_95_C_46_C_95_FnTypes(constructor_95_arg)
  return $__RTS.make_tuple(43,constructor_95_arg)

end
def FFI_95_C_46_C_95_IntBits16()
  return 44

end
def FFI_95_C_46_C_95_IntBits32()
  return 45

end
def FFI_95_C_46_C_95_IntBits64()
  return 46

end
def FFI_95_C_46_C_95_IntBits8()
  return 47

end
def FFI_95_C_46_C_95_IntChar()
  return 48

end
def FFI_95_C_46_C_95_IntNative()
  return 49

end
def FFI_95_C_46_C_95_IntT()
  return 50

end
def FFI_95_C_46_C_95_IntTypes(constructor_95_arg)
  return $__RTS.make_tuple(51,constructor_95_arg)

end
def FFI_95_C_46_C_95_MPtr()
  return 52

end
def FFI_95_C_46_C_95_Ptr()
  return 53

end
def FFI_95_C_46_C_95_Str()
  return 54

end
def FFI_95_C_46_C_95_Types(constructor_95_arg)
  return $__RTS.make_tuple(55,constructor_95_arg)

end
def FFI_95_C_46_C_95_Unit()
  return 56

end
def Language_46_Reflection_46_Errors_46_CantConvert()
  return 57

end
def Language_46_Reflection_46_Errors_46_CantInferType()
  return 58

end
def Language_46_Reflection_46_Errors_46_CantIntroduce()
  return 59

end
def Language_46_Reflection_46_Errors_46_CantMatch()
  return 60

end
def Language_46_Reflection_46_Errors_46_CantResolve()
  return 61

end
def Language_46_Reflection_46_Errors_46_CantResolveAlts()
  return 62

end
def Language_46_Reflection_46_Errors_46_CantSolveGoal()
  return 63

end
def Language_46_Reflection_46_Errors_46_CantUnify()
  return 64

end
def Language_46_Reflection_46_Case()
  return 65

end
def Language_46_Reflection_46_CaseN()
  return 66

end
def Prelude_46_Cast_46_Cast(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(67,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Ch()
  return 68

end
def Language_46_Reflection_46_Claim()
  return 69

end
def Prelude_46_Nat_46_CmpEQ()
  return 70

end
def Prelude_46_Nat_46_CmpGT()
  return 71

end
def Prelude_46_Nat_46_CmpLT()
  return 72

end
def Prelude_46_Nat_46_CmpNat(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(73,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Compute()
  return 74

end
def Language_46_Reflection_46_Const()
  return 75

end
def Language_46_Reflection_46_Elab_46_Constraint()
  return 76

end
def Language_46_Reflection_46_Elab_46_Constructor()
  return 77

end
def Language_46_Reflection_46_Elab_46_ConstructorDefn()
  return 78

end
def Language_46_Reflection_46_Elab_46_CtorArg()
  return 79

end
def Language_46_Reflection_46_Elab_46_CtorField()
  return 80

end
def Language_46_Reflection_46_Elab_46_CtorParameter()
  return 81

end
def Language_46_Reflection_46_DCon()
  return 82

end
def Prelude_46_File_46_DHandle(constructor_95_arg)
  return $__RTS.make_tuple(83,constructor_95_arg)

end
def FFI_95_Export_46_DHere()
  return 84

end
def Builtins_46_DPair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(85,constructor_95_arg,_constructor_95_arg)

end
def FFI_95_Export_46_DThere()
  return 86

end
def FFI_95_Export_46_Data(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(87,constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def FFI_95_Export_46_DataDefined(constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)
  return $__RTS.make_tuple(88,constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_DataDefn()
  return 89

end
def Language_46_Reflection_46_Elab_46_Datatype()
  return 90

end
def Prelude_46_Basics_46_Dec(constructor_95_arg)
  return $__RTS.make_tuple(91,constructor_95_arg)

end
def Decidable_46_Equality_46_DecEq(constructor_95_arg)
  return $__RTS.make_tuple(92,constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Declare()
  return 93

end
def Language_46_Reflection_46_Elab_46_DefineDatatype()
  return 94

end
def Language_46_Reflection_46_Elab_46_DefineFun()
  return 95

end
def Delay(constructor_95_arg)
  return $__RTS.make_tuple(96,constructor_95_arg)

end
def DelayReason()
  return 97

end
def Delayed(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(98,constructor_95_arg,_constructor_95_arg)

end
def Prelude_46_File_46_Directory()
  return 99

end
def Prelude_46_Show_46_Dollar()
  return 100

end
def Prelude_46_Interfaces_46_EQ()
  return 101

end
def Prelude_46_Either_46_Either(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(102,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Elab(constructor_95_arg)
  return $__RTS.make_tuple(103,constructor_95_arg)

end
def Prelude_46_Pairs_46_Element()
  return 104

end
def FFI_95_Export_46_End()
  return 105

end
def Prelude_46_Enum(constructor_95_arg)
  return $__RTS.make_tuple(106,constructor_95_arg)

end
def Prelude_46_Interfaces_46_Eq(constructor_95_arg)
  return $__RTS.make_tuple(107,constructor_95_arg)

end
def Prelude_46_Show_46_Eq()
  return 108

end
def Language_46_Reflection_46_Elab_46_Erased()
  return 109

end
def Language_46_Reflection_46_Erased()
  return 110

end
def Language_46_Reflection_46_Elab_46_Erasure()
  return 111

end
def Language_46_Reflection_46_Errors_46_Err()
  return 112

end
def Prelude_46_Providers_46_Error()
  return 113

end
def Language_46_Reflection_46_ErrorReportPart()
  return 114

end
def Prelude_46_Pairs_46_Evidence()
  return 115

end
def Language_46_Reflection_46_Exact()
  return 116

end
def Prelude_46_Pairs_46_Exists(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(117,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Explicit()
  return 118

end
def ForeignEnv_46_FEnv(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(119,constructor_95_arg,_constructor_95_arg)

end
def FFI()
  return 120

end
def FFI_95_Export_46_FFI_95_Base(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(121,constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_ExpType(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(122,constructor_95_arg,_constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Export(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(123,constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Exportable(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(124,constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Fun(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(125,constructor_95_arg,_constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_IO(constructor_95_arg)
  return $__RTS.make_tuple(126,constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Prim(constructor_95_arg)
  return $__RTS.make_tuple(127,constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Ret(constructor_95_arg)
  return $__RTS.make_tuple(128,constructor_95_arg)

end
def FFun()
  return 129

end
def Prelude_46_File_46_FHandle(constructor_95_arg)
  return $__RTS.make_tuple(130,constructor_95_arg)

end
def FRet()
  return 131

end
def FTy(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(132,constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def Language_46_Reflection_46_Fail()
  return 133

end
def Prelude_46_Bool_46_False()
  return 0

end
def Prelude_46_File_46_File()
  return 134

end
def Prelude_46_File_46_FileError()
  return 135

end
def Language_46_Reflection_46_FileLoc()
  return 136

end
def Prelude_46_File_46_FileNotFound()
  return 137

end
def Prelude_46_File_46_FileReadError()
  return 138

end
def Prelude_46_File_46_FileWriteError()
  return 139

end
def Language_46_Reflection_46_Fill()
  return 140

end
def Language_46_Reflection_46_Elab_46_Fixity()
  return 141

end
def Language_46_Reflection_46_Fl()
  return 142

end
def Language_46_Reflection_46_Focus()
  return 143

end
def Prelude_46_Foldable_46_Foldable(constructor_95_arg)
  return $__RTS.make_tuple(144,constructor_95_arg)

end
def Force(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return _123_EVAL_95_0_125_(_123_arg_95_2_125_)

end
def Language_46_Reflection_46_Forgot()
  return 145

end
def Prelude_46_Interfaces_46_Fractional(constructor_95_arg)
  return $__RTS.make_tuple(146,constructor_95_arg)

end
def FFI_95_Export_46_Fun(constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)
  return $__RTS.make_tuple(147,constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_FunArg()
  return 148

end
def Language_46_Reflection_46_Elab_46_FunClause(constructor_95_arg)
  return $__RTS.make_tuple(149,constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_FunDefn(constructor_95_arg)
  return $__RTS.make_tuple(150,constructor_95_arg)

end
def Prelude_46_Functor_46_Functor(constructor_95_arg)
  return $__RTS.make_tuple(151,constructor_95_arg)

end
def Language_46_Reflection_46_GHole()
  return 152

end
def Prelude_46_Interfaces_46_GT()
  return 153

end
def Prelude_46_File_46_GenericFileError()
  return 154

end
def Prelude_46_Nat_46_GetAdditive()
  return 155

end
def Prelude_46_Nat_46_GetMultiplicative()
  return 156

end
def Language_46_Reflection_46_GoalType()
  return 157

end
def Language_46_Reflection_46_Guess()
  return 158

end
def Language_46_Reflection_46_Hole()
  return 159

end
def Language_46_Reflection_46_I()
  return 160

end
def IO_39_(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(161,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_IT16()
  return 162

end
def Language_46_Reflection_46_IT32()
  return 163

end
def Language_46_Reflection_46_IT64()
  return 164

end
def Language_46_Reflection_46_IT8()
  return 165

end
def Language_46_Reflection_46_ITBig()
  return 166

end
def Language_46_Reflection_46_ITChar()
  return 167

end
def Language_46_Reflection_46_ITFixed()
  return 168

end
def Language_46_Reflection_46_ITNative()
  return 169

end
def Language_46_Reflection_46_Implementation()
  return 170

end
def Language_46_Reflection_46_ImplementationCtorN()
  return 171

end
def Language_46_Reflection_46_ImplementationN()
  return 172

end
def Language_46_Reflection_46_Elab_46_Implicit()
  return 173

end
def Prelude_46_List_46_InBounds(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(174,constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def Prelude_46_List_46_InFirst()
  return 175

end
def Prelude_46_List_46_InLater()
  return 176

end
def Language_46_Reflection_46_Errors_46_Inaccessible()
  return 177

end
def Language_46_Reflection_46_Errors_46_IncompleteTerm()
  return 178

end
def Language_46_Reflection_46_Induction()
  return 179

end
def Infinite()
  return 180

end
def Language_46_Reflection_46_Errors_46_InfiniteUnify()
  return 181

end
def Language_46_Reflection_46_Elab_46_Infix()
  return 182

end
def Language_46_Reflection_46_Elab_46_Infixl()
  return 183

end
def Language_46_Reflection_46_Elab_46_Infixr()
  return 184

end
def Language_46_Reflection_46_IntTy()
  return 185

end
def Prelude_46_Interfaces_46_Integral(constructor_95_arg)
  return $__RTS.make_tuple(186,constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_InternalMsg()
  return 187

end
def Language_46_Reflection_46_Intro()
  return 188

end
def Language_46_Reflection_46_Intros()
  return 189

end
def Language_46_Reflection_46_Errors_46_InvalidTCArg()
  return 190

end
def Prelude_46_Maybe_46_IsJust(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(191,constructor_95_arg,_constructor_95_arg)

end
def Prelude_46_List_46_IsNonEmpty()
  return 192

end
def Prelude_46_Nat_46_IsSucc(constructor_95_arg)
  return $__RTS.make_tuple(193,constructor_95_arg)

end
def Prelude_46_Maybe_46_ItIsJust()
  return 194

end
def Prelude_46_Nat_46_ItIsSucc()
  return 195

end
def JS_95_Float()
  return 196

end
def JS_95_Fn()
  return 197

end
def JS_95_FnBase()
  return 198

end
def JS_95_FnIO()
  return 199

end
def JS_95_FnT()
  return 200

end
def JS_95_FnTypes(constructor_95_arg)
  return $__RTS.make_tuple(201,constructor_95_arg)

end
def JS_95_IntChar()
  return 202

end
def JS_95_IntNative()
  return 203

end
def JS_95_IntT()
  return 204

end
def JS_95_IntTypes(constructor_95_arg)
  return $__RTS.make_tuple(205,constructor_95_arg)

end
def JS_95_Ptr()
  return 206

end
def JS_95_Str()
  return 207

end
def JS_95_Types(constructor_95_arg)
  return $__RTS.make_tuple(208,constructor_95_arg)

end
def JS_95_Unit()
  return 209

end
def JsFn(constructor_95_arg)
  return $__RTS.make_tuple(210,constructor_95_arg)

end
def Prelude_46_Maybe_46_Just(constructor_95_arg)
  return $__RTS.make_tuple(211,constructor_95_arg)

end
def Prelude_46_Interfaces_46_LT()
  return 212

end
def Prelude_46_Nat_46_LTE(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(213,constructor_95_arg,_constructor_95_arg)

end
def Prelude_46_Nat_46_LTESucc()
  return 214

end
def Prelude_46_Nat_46_LTEZero()
  return 215

end
def Language_46_Reflection_46_Lam()
  return 216

end
def LazyValue()
  return 217

end
def Prelude_46_Either_46_Left(constructor_95_arg)
  return $__RTS.make_tuple(218,constructor_95_arg)

end
def Prelude_46_Nat_46_LeftIsNotZero()
  return 219

end
def Language_46_Reflection_46_Let()
  return 220

end
def Language_46_Reflection_46_LetTac()
  return 221

end
def Language_46_Reflection_46_LetTacTy()
  return 222

end
def Prelude_46_List_46_List(constructor_95_arg)
  return $__RTS.make_tuple(223,constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_LoadingFailed()
  return 224

end
def Language_46_Reflection_46_MN()
  return 225

end
def ManagedPtr()
  return 226

end
def Prelude_46_Interfaces_46_MaxBound(constructor_95_arg)
  return $__RTS.make_tuple(227,constructor_95_arg)

end
def Prelude_46_Maybe_46_Maybe(constructor_95_arg)
  return $__RTS.make_tuple(228,constructor_95_arg)

end
def Language_46_Reflection_46_MetaN()
  return 229

end
def Language_46_Reflection_46_MethodN()
  return 230

end
def Prelude_46_Interfaces_46_MinBound(constructor_95_arg)
  return $__RTS.make_tuple(231,constructor_95_arg)

end
def FFI_95_C_46_MkCFnPtr(constructor_95_arg)
  return $__RTS.make_tuple(232,constructor_95_arg)

end
def Builtins_46_MkDPair()
  return 233

end
def Language_46_Reflection_46_Elab_46_MkDatatype()
  return 234

end
def MkFFI()
  return 235

end
def Language_46_Reflection_46_Elab_46_MkFunArg()
  return 236

end
def Language_46_Reflection_46_Elab_46_MkFunClause()
  return 237

end
def MkIO(constructor_95_arg)
  return $__RTS.make_tuple(238,constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_MkImpossibleClause()
  return 239

end
def MkJsFn(constructor_95_arg)
  return $__RTS.make_tuple(240,constructor_95_arg)

end
def Builtins_46_MkPair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(241,constructor_95_arg,_constructor_95_arg)

end
def FFI_95_C_46_MkRaw(constructor_95_arg)
  return $__RTS.make_tuple(242,constructor_95_arg)

end
def Prelude_46_Strings_46_MkString()
  return 243

end
def Builtins_46_MkUPair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(244,constructor_95_arg,_constructor_95_arg)

end
def MkUnit()
  return 245

end
def Prelude_46_File_46_Mode()
  return 246

end
def Prelude_46_Monad_46_Monad(constructor_95_arg)
  return $__RTS.make_tuple(247,constructor_95_arg)

end
def Prelude_46_Algebra_46_Monoid(constructor_95_arg)
  return $__RTS.make_tuple(248,constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_Msg()
  return 249

end
def Prelude_46_Nat_46_Multiplicative()
  return 250

end
def Language_46_Reflection_46_NS()
  return 251

end
def Language_46_Reflection_46_NamePart()
  return 252

end
def Language_46_Reflection_46_NameType()
  return 253

end
def Prelude_46_Nat_46_Nat()
  return 254

end
def Language_46_Reflection_46_NativeTy()
  return 255

end
def Prelude_46_Interfaces_46_Neg(constructor_95_arg)
  return $__RTS.make_tuple(256,constructor_95_arg)

end
def ForeignEnv_46_Nil()
  return 257

end
def Prelude_46_List_46_Nil()
  return 258

end
def Prelude_46_Basics_46_No()
  return 259

end
def Language_46_Reflection_46_Errors_46_NoRewriting()
  return 260

end
def Language_46_Reflection_46_Errors_46_NoSuchVariable()
  return 261

end
def Language_46_Reflection_46_Errors_46_NoTypeDecl()
  return 262

end
def Language_46_Reflection_46_Errors_46_NoValidAlts()
  return 263

end
def Language_46_Reflection_46_Errors_46_NonCollapsiblePostulate()
  return 264

end
def Prelude_46_List_46_NonEmpty(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(265,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_NonFunctionType()
  return 266

end
def Prelude_46_Nat_46_NotBothZero(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(267,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_NotEquality()
  return 268

end
def Language_46_Reflection_46_Elab_46_NotErased()
  return 269

end
def Language_46_Reflection_46_Errors_46_NotInjective()
  return 270

end
def Prelude_46_Maybe_46_Nothing()
  return 271

end
def Language_46_Reflection_46_NullType()
  return 272

end
def Prelude_46_Interfaces_46_Num(constructor_95_arg)
  return $__RTS.make_tuple(273,constructor_95_arg)

end
def Prelude_46_Show_46_Open()
  return 274

end
def Prelude_46_Interfaces_46_Ord(constructor_95_arg)
  return $__RTS.make_tuple(275,constructor_95_arg)

end
def Prelude_46_Interfaces_46_Ordering()
  return 276

end
def Language_46_Reflection_46_P()
  return 277

end
def Language_46_Reflection_46_PVTy()
  return 278

end
def Language_46_Reflection_46_PVar()
  return 279

end
def Builtins_46_Pair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(280,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_ParentN()
  return 281

end
def Prelude_46_File_46_PermissionDenied()
  return 282

end
def Language_46_Reflection_46_Pi()
  return 283

end
def Language_46_Reflection_46_Elab_46_Plicity()
  return 284

end
def Prelude_46_Show_46_Prec()
  return 285

end
def Language_46_Reflection_46_Elab_46_Prefix()
  return 286

end
def Prelude_46_Show_46_PrefixMinus()
  return 287

end
def PrimIO(constructor_95_arg)
  return $__RTS.make_tuple(288,constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_AddImplementation()
  return 289

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Apply()
  return 290

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Attack()
  return 291

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_BindElab()
  return 292

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Check()
  return 293

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Claim()
  return 294

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Compute()
  return 295

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Converts()
  return 296

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Debug()
  return 297

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_DeclareDatatype()
  return 298

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_DeclareType()
  return 299

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_DefineDatatype()
  return 300

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_DefineFunction()
  return 301

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Env()
  return 302

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Fail()
  return 303

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Fill()
  return 304

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Fixity()
  return 305

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Focus()
  return 306

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Forall()
  return 307

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Gensym()
  return 308

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Goal()
  return 309

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Guess()
  return 310

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Holes()
  return 311

end
def Prim_95__95_IO(constructor_95_arg)
  return $__RTS.make_tuple(312,constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Intro()
  return 313

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_IsTCName()
  return 314

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LetBind()
  return 315

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupArgs()
  return 316

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupDatatype()
  return 317

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupFunDefn()
  return 318

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupTy()
  return 319

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_MatchApply()
  return 320

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Metavar()
  return 321

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Namespace()
  return 322

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Normalise()
  return 323

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_PatBind()
  return 324

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_PatVar()
  return 325

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_PureElab()
  return 326

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_RecursiveElab()
  return 327

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_ResolveTC()
  return 328

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Rewrite()
  return 329

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Search()
  return 330

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Solve()
  return 331

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_SourceLocation()
  return 332

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Try()
  return 333

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_TryCatch()
  return 334

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Unfocus()
  return 335

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Whnf()
  return 336

end
def Language_46_Reflection_46_Errors_46_ProgramLineComment()
  return 337

end
def Language_46_Reflection_46_Errors_46_ProofSearchFail()
  return 338

end
def Prelude_46_Providers_46_Provide()
  return 339

end
def Prelude_46_Providers_46_Provider(constructor_95_arg)
  return $__RTS.make_tuple(340,constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_ProviderError()
  return 341

end
def Ptr()
  return 342

end
def Language_46_Reflection_46_Quotable(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(343,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_RApp()
  return 344

end
def Language_46_Reflection_46_RBind()
  return 345

end
def Language_46_Reflection_46_RConstant()
  return 346

end
def Language_46_Reflection_46_RType()
  return 347

end
def Language_46_Reflection_46_RUType()
  return 348

end
def FFI_95_C_46_Raw(constructor_95_arg)
  return $__RTS.make_tuple(349,constructor_95_arg)

end
def Language_46_Reflection_46_Raw()
  return 350

end
def Language_46_Reflection_46_RawPart()
  return 351

end
def Prelude_46_File_46_Read()
  return 352

end
def Ownership_46_Read()
  return 353

end
def Prelude_46_File_46_ReadAppend()
  return 354

end
def Prelude_46_File_46_ReadWrite()
  return 355

end
def Prelude_46_File_46_ReadWriteTruncate()
  return 356

end
def Language_46_Reflection_46_Ref()
  return 357

end
def Language_46_Reflection_46_Refine()
  return 358

end
def Refl()
  return 359

end
def Language_46_Reflection_46_ReflConst(constructor_95_arg)
  return $__RTS.make_tuple(360,constructor_95_arg)

end
def Language_46_Reflection_46_Reflect()
  return 361

end
def Language_46_Reflection_46_Rewrite()
  return 362

end
def Prelude_46_Either_46_Right(constructor_95_arg)
  return $__RTS.make_tuple(363,constructor_95_arg)

end
def Prelude_46_Nat_46_RightIsNotZero()
  return 364

end
def Prelude_46_Nat_46_S()
  return 365

end
def Language_46_Reflection_46_SN()
  return 366

end
def Language_46_Reflection_46_Search()
  return 367

end
def Prelude_46_Algebra_46_Semigroup(constructor_95_arg)
  return $__RTS.make_tuple(368,constructor_95_arg)

end
def Language_46_Reflection_46_Seq()
  return 369

end
def Prelude_46_Show_46_Show(constructor_95_arg)
  return $__RTS.make_tuple(370,constructor_95_arg)

end
def Prelude_46_WellFounded_46_Sized(constructor_95_arg)
  return $__RTS.make_tuple(371,constructor_95_arg)

end
def Language_46_Reflection_46_Skip()
  return 372

end
def Language_46_Reflection_46_Solve()
  return 373

end
def Language_46_Reflection_46_SourceFC()
  return 374

end
def Language_46_Reflection_46_SourceLocation()
  return 375

end
def Language_46_Reflection_46_SpecialName()
  return 376

end
def Language_46_Reflection_46_Str()
  return 377

end
def Prelude_46_Strings_46_StrCons(constructor_95_arg)
  return $__RTS.make_tuple(378,constructor_95_arg)

end
def Prelude_46_Strings_46_StrM(constructor_95_arg)
  return $__RTS.make_tuple(379,constructor_95_arg)

end
def Prelude_46_Strings_46_StrNil()
  return 380

end
def Language_46_Reflection_46_StrType()
  return 381

end
def Prelude_46_Stream_46_Stream(constructor_95_arg)
  return $__RTS.make_tuple(382,constructor_95_arg)

end
def Prelude_46_Strings_46_StringBuffer()
  return 383

end
def Language_46_Reflection_46_SubReport()
  return 384

end
def Prelude_46_Pairs_46_Subset(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(385,constructor_95_arg,_constructor_95_arg)

end
def Symbol_95_(constructor_95_arg)
  return $__RTS.make_tuple(386,constructor_95_arg)

end
def Language_46_Reflection_46_TCon()
  return 387

end
def Language_46_Reflection_46_TConst()
  return 388

end
def Language_46_Reflection_46_TT()
  return 389

end
def Language_46_Reflection_46_TTName()
  return 390

end
def Language_46_Reflection_46_TTUExp()
  return 391

end
def Language_46_Reflection_46_TType()
  return 392

end
def Language_46_Reflection_46_Tactic()
  return 393

end
def Language_46_Reflection_46_TermPart()
  return 394

end
def Language_46_Reflection_46_TextPart()
  return 395

end
def TheWorld(constructor_95_arg)
  return $__RTS.make_tuple(396,constructor_95_arg)

end
def Language_46_Reflection_46_TheWorld()
  return 397

end
def Language_46_Reflection_46_Errors_46_TooManyArguments()
  return 398

end
def Prelude_46_Traversable_46_Traversable(constructor_95_arg)
  return $__RTS.make_tuple(399,constructor_95_arg)

end
def Language_46_Reflection_46_Trivial()
  return 400

end
def Prelude_46_Bool_46_True()
  return 1

end
def Language_46_Reflection_46_Try()
  return 401

end
def Language_46_Reflection_46_Elab_46_TyConArg()
  return 402

end
def Language_46_Reflection_46_Elab_46_TyConIndex()
  return 403

end
def Language_46_Reflection_46_Elab_46_TyConParameter()
  return 404

end
def Language_46_Reflection_46_Elab_46_TyDecl()
  return 405

end
def Language_46_Reflection_46_UN()
  return 406

end
def Builtins_46_UPair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(407,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_UType()
  return 408

end
def Language_46_Reflection_46_UVal()
  return 409

end
def Language_46_Reflection_46_UVar()
  return 410

end
def Language_46_Reflection_46_Unfocus()
  return 411

end
def Language_46_Reflection_46_Errors_46_UnifyScope()
  return 412

end
def Prelude_46_Uninhabited_46_Uninhabited(constructor_95_arg)
  return $__RTS.make_tuple(413,constructor_95_arg)

end
def Language_46_Reflection_46_UniqueType()
  return 414

end
def Unit()
  return 415

end
def Language_46_Reflection_46_Universe()
  return 416

end
def Language_46_Reflection_46_Errors_46_UniverseError()
  return 417

end
def Language_46_Reflection_46_Errors_46_UnknownImplicit()
  return 418

end
def Prelude_46_Show_46_User()
  return 419

end
def Language_46_Reflection_46_V()
  return 420

end
def Language_46_Reflection_46_Var()
  return 421

end
def Void()
  return 422

end
def Language_46_Reflection_46_VoidType()
  return 423

end
def Prelude_46_WellFounded_46_WellFounded(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(424,constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_WhereN()
  return 425

end
def Language_46_Reflection_46_Errors_46_WithFnType()
  return 426

end
def Language_46_Reflection_46_WithN()
  return 427

end
def World()
  return 428

end
def Language_46_Reflection_46_WorldType()
  return 429

end
def Prelude_46_File_46_WriteTruncate()
  return 430

end
def Prelude_46_Basics_46_Yes()
  return 431

end
def Prelude_46_Nat_46_Z()
  return 432

end
def assert_95_unreachable()
  return nil

end
def call_95__95_IO(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return _123_APPLY_95_0_125_(_123_arg_95_2_125_,nil)

end
def idris_95_crash()
  return nil

end
def Prelude_46_Bool_46_ifThenElse(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_1_125_
  caseMerged = nil
  if valToMatch == true
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_2_125_)

  elsif valToMatch == false
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_3_125_)

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def Prelude_46_Interfaces_46_intToBool(_123_arg_95_0_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == 0
    caseMerged = false

  else
    caseMerged = true

  end
  return caseMerged

end
def io_95_bind(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_k_95_4_125_,_123_w_95_5_125_)
  return _123_APPLY_95_0_125_(_123_APPLY_95_0_125_(_123_k_95_4_125_,_123_APPLY_95_0_125_(_123_arg_95_3_125_,_123_w_95_5_125_)),_123_w_95_5_125_)

end
def io_95_pure(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_w_95_3_125_)
  return _123_arg_95_2_125_

end
def Main_46_main(_123_in_95_0_125_)
  _123_in_95_1_125_ = nil
  _123_in_95_1_125_ = $__RTS.op_write_str(_123_in_95_0_125_,"calc:\r\n")
  _123_in_95_2_125_ = nil
  _123_in_95_2_125_ = nil
  _123_in_95_3_125_ = nil
  _123_in_95_3_125_ = $__RTS.op_write_str(_123_in_95_0_125_,$__RTS.op_str_concat(Prelude_46_Show_46_primNumShow(nil,_123_U_95_prim_95__95_toStrBigInt_95_1_125_(),274,14),"\r\n"))
  return nil

end
def mkForeignPrim()
  return nil

end
def Prelude_46_Bool_46_not(_123_arg_95_0_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == true
    caseMerged = false

  elsif valToMatch == false
    caseMerged = true

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def Prelude_46_Show_46_precCon(_123_arg_95_0_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == 419
    caseMerged = 4

  elsif valToMatch == 287
    caseMerged = 5

  elsif valToMatch == 274
    caseMerged = 0

  elsif valToMatch == 108
    caseMerged = 1

  elsif valToMatch == 100
    caseMerged = 2

  elsif valToMatch == 27
    caseMerged = 3

  elsif valToMatch == 17
    caseMerged = 6

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def Prelude_46_Show_46_primNumShow(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  _123_in_95_4_125_ = nil
  _123_in_95_4_125_ = _123_APPLY_95_0_125_(_123_arg_95_1_125_,_123_arg_95_3_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_2_125_
  caseMerged = nil
  if valToMatch == 419
    caseMerged = 4

  elsif valToMatch == 287
    caseMerged = 5

  elsif valToMatch == 274
    caseMerged = 0

  elsif valToMatch == 108
    caseMerged = 1

  elsif valToMatch == 100
    caseMerged = 2

  elsif valToMatch == 27
    caseMerged = 3

  elsif valToMatch == 17
    caseMerged = 6

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  _valToMatch = nil
  _valToMatch = Prelude_46_Interfaces_46_Prelude_46_Interfaces_46__64_Prelude_46_Interfaces_46_Ord_36_Integer_58__33_compare_58_0(caseMerged,5)
  ___caseMerged = nil
  if _valToMatch == 153
    ___caseMerged = true

  else
    __valToMatch = nil
    __valToMatch = _123_arg_95_2_125_
    _caseMerged = nil
    if __valToMatch == 419
      _caseMerged = 4

    elsif __valToMatch == 287
      _caseMerged = 5

    elsif __valToMatch == 274
      _caseMerged = 0

    elsif __valToMatch == 108
      _caseMerged = 1

    elsif __valToMatch == 100
      _caseMerged = 2

    elsif __valToMatch == 27
      _caseMerged = 3

    elsif __valToMatch == 17
      _caseMerged = 6

    else
      $__RTS.error("pattern matching failed")
      _caseMerged = nil

    end
    ___valToMatch = nil
    ___valToMatch = $__RTS.op_eq(_caseMerged,5)
    __caseMerged = nil
    if ___valToMatch == 0
      __caseMerged = false

    else
      __caseMerged = true

    end
    ___caseMerged = __caseMerged

  end
  ____valToMatch = nil
  ____valToMatch = ___caseMerged
  ____caseMerged = nil
  if ____valToMatch == true
    _____valToMatch = nil
    _____valToMatch = $__RTS.op_str_eq(_123_in_95_4_125_,"")
    _____caseMerged = nil
    if _____valToMatch == 0
      _____caseMerged = true

    else
      _____caseMerged = false

    end
    ______valToMatch = nil
    ______valToMatch = Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(_____caseMerged,true)
    ______caseMerged = nil
    if ______valToMatch == 431
      _______valToMatch = nil
      _______valToMatch = $__RTS.op_eq($__RTS.op_str_head(_123_in_95_4_125_),"-")
      _______caseMerged = nil
      if _______valToMatch == 0
        _______caseMerged = false

      else
        _______caseMerged = true

      end
      ______caseMerged = _______caseMerged

    elsif ______valToMatch == 259
      ______caseMerged = false

    else
      $__RTS.error("pattern matching failed")
      ______caseMerged = nil

    end
    ____caseMerged = ______caseMerged

  elsif ____valToMatch == false
    ____caseMerged = false

  else
    $__RTS.error("pattern matching failed")
    ____caseMerged = nil

  end
  _____valToMatch = nil
  _____valToMatch = ____caseMerged
  _____caseMerged = nil
  if _____valToMatch == true
    _____caseMerged = $__RTS.op_str_concat("(",$__RTS.op_str_concat(_123_in_95_4_125_,")"))

  elsif _____valToMatch == false
    _____caseMerged = _123_in_95_4_125_

  else
    $__RTS.error("pattern matching failed")
    _____caseMerged = nil

  end
  return _____caseMerged

end
def prim_95__95_asPtr(_123_arg_95_0_125_)
  return $__RTS.op_external(_123_arg_95_0_125_)

end
def prim_95__95_concat(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_str_concat(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_eqBigInt(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_eq(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_eqChar(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_eq(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_eqManagedPtr(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_eqPtr(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_eqString(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_str_eq(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_managedNull()
  return $__RTS.op_external()

end
def prim_95__95_null()
  return $__RTS.op_external()

end
def prim_95__95_peek16(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)

end
def prim_95__95_peek32(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)

end
def prim_95__95_peek64(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)

end
def prim_95__95_peek8(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)

end
def prim_95__95_peekDouble(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)

end
def prim_95__95_peekPtr(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)

end
def prim_95__95_peekSingle(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)

end
def prim_95__95_poke16(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)

end
def prim_95__95_poke32(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)

end
def prim_95__95_poke64(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)

end
def prim_95__95_poke8(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)

end
def prim_95__95_pokeDouble(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)

end
def prim_95__95_pokePtr(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)

end
def prim_95__95_pokeSingle(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)

end
def prim_95__95_ptrOffset(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_readChars(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)

end
def prim_95__95_readFile(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_registerPtr(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_sizeofPtr()
  return $__RTS.op_external()

end
def prim_95__95_sltBigInt(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_slt(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95__95_stderr()
  return $__RTS.op_external()

end
def prim_95__95_stdin()
  return $__RTS.op_external()

end
def prim_95__95_stdout()
  return $__RTS.op_external()

end
def prim_95__95_strHead(_123_arg_95_0_125_)
  return $__RTS.op_str_head(_123_arg_95_0_125_)

end
def prim_95__95_toStrBigInt(_123_arg_95_0_125_)
  return $__RTS.op_int_str(_123_arg_95_0_125_)

end
def prim_95__95_vm(_123_arg_95_0_125_)
  return $__RTS.op_external(_123_arg_95_0_125_)

end
def prim_95__95_writeFile(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return $__RTS.op_external(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)

end
def prim_95__95_writeString(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_write_str(_123_arg_95_0_125_,_123_arg_95_1_125_)

end
def prim_95_io_95_bind(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  return _123_APPLY_95_0_125_(_123_arg_95_3_125_,_123_arg_95_2_125_)

end
def run_95__95_IO(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return _123_APPLY_95_0_125_(_123_arg_95_1_125_,nil)

end
def Prelude_46_Show_46_showParens(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == true
    caseMerged = $__RTS.op_str_concat("(",$__RTS.op_str_concat(_123_arg_95_1_125_,")"))

  elsif valToMatch == false
    caseMerged = _123_arg_95_1_125_

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def unsafePerformPrimIO()
  return nil

end
def world(_123_arg_95_0_125_)
  return _123_arg_95_0_125_

end
def Prelude_46_Bool_46__124__124_(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == true
    caseMerged = _123_arg_95_0_125_

  elsif valToMatch == false
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_1_125_)

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def _123_APPLY_95_0_125_(_123_fn_95_0_125_,_123_arg_95_0_125_)
  valToMatch = nil
  valToMatch = _123_fn_95_0_125_
  caseMerged = nil
  if valToMatch == 433
    caseMerged = prim_95__95_toStrBigInt(_123_arg_95_0_125_)

  else
    caseMerged = nil

  end
  return caseMerged

end
def _123_APPLY2_95_0_125_(_123_fn_95_0_125_,_123_arg0_95_0_125_,_123_arg1_95_0_125_)
  return nil

end
def _123_EVAL_95_0_125_(_123_arg_95_0_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  return _123_arg_95_0_125_

end
def _123__95__95_Infer_95_0_125_()
  return 434

end
def _123__95__95_infer_95_0_125_()
  return 435

end
def _123_runMain_95_0_125_()
  return _123_EVAL_95_0_125_(Main_46_main(nil))

end
def _123_U_95_prim_95__95_toStrBigInt_95_1_125_()
  return 433

end
def Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_1_125_
  caseMerged = nil
  if valToMatch == true
    _valToMatch = nil
    _valToMatch = _123_arg_95_0_125_
    _caseMerged = nil
    if _valToMatch == true
      _caseMerged = 431

    elsif _valToMatch == false
      _caseMerged = 259

    else
      $__RTS.error("pattern matching failed")
      _caseMerged = nil

    end
    caseMerged = _caseMerged

  elsif valToMatch == false
    _valToMatch = nil
    _valToMatch = _123_arg_95_0_125_
    _caseMerged = nil
    if _valToMatch == true
      _caseMerged = 259

    elsif _valToMatch == false
      _caseMerged = 431

    else
      $__RTS.error("pattern matching failed")
      _caseMerged = nil

    end
    caseMerged = _caseMerged

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def Prelude_46_Interfaces_46_Prelude_46_Interfaces_46__64_Prelude_46_Interfaces_46_Ord_36_Integer_58__33_compare_58_0(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = $__RTS.op_eq(_123_arg_95_0_125_,_123_arg_95_1_125_)
  caseMerged = nil
  if valToMatch == 0
    _valToMatch = nil
    _valToMatch = $__RTS.op_slt(_123_arg_95_0_125_,_123_arg_95_1_125_)
    _caseMerged = nil
    if _valToMatch == 0
      _caseMerged = 153

    else
      _caseMerged = 212

    end
    caseMerged = _caseMerged

  else
    caseMerged = 101

  end
  return caseMerged

end
def _95_Prelude_46_Interfaces_46_Prelude_46_Show_46__64_Prelude_46_Interfaces_46_Ord_36_Prec_58__33__62__58_0_95_with_95_28(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == 153
    caseMerged = true

  else
    caseMerged = false

  end
  return caseMerged

end
def _95_Prelude_46_Strings_46_strM_95_with_95_33(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_1_125_
  caseMerged = nil
  if valToMatch == 431
    caseMerged = $__RTS.make_tuple(378,$__RTS.op_str_head(_123_arg_95_0_125_))

  elsif valToMatch == 259
    caseMerged = 380

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def _95_Prelude_46_Show_46_firstCharIs_95_with_95_46(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_2_125_
  caseMerged = nil
  if valToMatch == 380
    caseMerged = false

  else
    if $__RTS.is_tuple(valToMatch)
      if valToMatch == 378
        _123_in_95_3_125_ = nil
        _123_in_95_3_125_ = $__RTS.proj(valToMatch,1)
        caseMerged = _123_APPLY_95_0_125_(_123_arg_95_0_125_,_123_in_95_3_125_)

      else
        $__RTS.error("pattern matching failed")
        caseMerged = nil

      end

    else
      $__RTS.error("pattern matching failed")
      caseMerged = nil

    end
    caseMerged = caseMerged

  end
  return caseMerged

end
def io_95_bind_95_IO_95__95_idr_95_108_95_34_95_108_95_36_95_case(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_arg_95_4_125_,_123_arg_95_5_125_,_123_arg_95_6_125_,_123_arg_95_7_125_)
  return _123_APPLY_95_0_125_(_123_arg_95_7_125_,_123_arg_95_5_125_)

end
def Prelude_46_Interfaces_46_Abs_95_ictor()
  return 436

end
def Prelude_46_Applicative_46_Alternative_95_ictor()
  return 437

end
def Prelude_46_Applicative_46_Applicative_95_ictor()
  return 438

end
def Prelude_46_Cast_46_Cast_95_ictor()
  return 439

end
def Decidable_46_Equality_46_DecEq_95_ictor()
  return 440

end
def Prelude_46_Enum_95_ictor()
  return 441

end
def Prelude_46_Interfaces_46_Eq_95_ictor()
  return 442

end
def Prelude_46_Foldable_46_Foldable_95_ictor()
  return 443

end
def Prelude_46_Interfaces_46_Fractional_95_ictor()
  return 444

end
def Prelude_46_Functor_46_Functor_95_ictor()
  return 445

end
def Prelude_46_Interfaces_46_Integral_95_ictor()
  return 446

end
def Prelude_46_Interfaces_46_MaxBound_95_ictor()
  return 447

end
def Prelude_46_Interfaces_46_MinBound_95_ictor()
  return 448

end
def Prelude_46_Monad_46_Monad_95_ictor()
  return 449

end
def Prelude_46_Algebra_46_Monoid_95_ictor()
  return 450

end
def Prelude_46_Interfaces_46_Neg_95_ictor()
  return 451

end
def Prelude_46_Interfaces_46_Num_95_ictor()
  return 452

end
def Prelude_46_Interfaces_46_Ord_95_ictor()
  return 453

end
def Language_46_Reflection_46_Quotable_95_ictor()
  return 454

end
def Language_46_Reflection_46_ReflConst_95_ictor()
  return 455

end
def Prelude_46_Algebra_46_Semigroup_95_ictor()
  return 456

end
def Prelude_46_Show_46_Show_95_ictor()
  return 457

end
def Prelude_46_WellFounded_46_Sized_95_ictor()
  return 458

end
def Prelude_46_Traversable_46_Traversable_95_ictor()
  return 459

end
def Prelude_46_Uninhabited_46_Uninhabited_95_ictor()
  return 460

end
def Prelude_46_WellFounded_46_WellFounded_95_ictor()
  return 461

end
_123_runMain_95_0_125_()
