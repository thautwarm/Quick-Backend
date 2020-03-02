require_relative 'rts'
$__RTS = RTS::new
def Prelude_46_Bool_46__38__38_(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == false
    caseMerged = _123_arg_95_0_125_

  elsif valToMatch == true
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_1_125_)

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def ForeignEnv_46__58__58_()
  return :"ForeignEnv.::"

end
def Prelude_46_List_46__58__58_(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.List.::",constructor_95_arg,_constructor_95_arg)

end
def Prelude_46_Stream_46__58__58_(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Stream.::",constructor_95_arg)

end
def _61_(constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)
  return $__RTS.make_tuple(:"=",constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)

end
def Language_46_Reflection_46_ATDouble()
  return :"Language.Reflection.ATDouble"

end
def Language_46_Reflection_46_ATInt()
  return :"Language.Reflection.ATInt"

end
def Language_46_Reflection_46_AType()
  return :"Language.Reflection.AType"

end
def Prelude_46_Interfaces_46_Abs(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Interfaces.Abs",constructor_95_arg)

end
def Prelude_46_WellFounded_46_Access()
  return :"Prelude.WellFounded.Access"

end
def Prelude_46_WellFounded_46_Accessible(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.WellFounded.Accessible",constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def Prelude_46_Nat_46_Additive()
  return :"Prelude.Nat.Additive"

end
def Language_46_Reflection_46_AllTypes()
  return :"Language.Reflection.AllTypes"

end
def Language_46_Reflection_46_Errors_46_AlreadyDefined()
  return :"Language.Reflection.Errors.AlreadyDefined"

end
def Prelude_46_Applicative_46_Alternative(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Applicative.Alternative",constructor_95_arg)

end
def Language_46_Reflection_46_App()
  return :"Language.Reflection.App"

end
def Prelude_46_Show_46_App()
  return :"Prelude.Show.App"

end
def Prelude_46_File_46_Append()
  return :"Prelude.File.Append"

end
def Prelude_46_Applicative_46_Applicative(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Applicative.Applicative",constructor_95_arg)

end
def Language_46_Reflection_46_ApplyTactic()
  return :"Language.Reflection.ApplyTactic"

end
def Language_46_Reflection_46_ArithTy()
  return :"Language.Reflection.ArithTy"

end
def Language_46_Reflection_46_B16()
  return :"Language.Reflection.B16"

end
def Language_46_Reflection_46_B32()
  return :"Language.Reflection.B32"

end
def Language_46_Reflection_46_B64()
  return :"Language.Reflection.B64"

end
def Language_46_Reflection_46_B8()
  return :"Language.Reflection.B8"

end
def Language_46_Reflection_46_BI()
  return :"Language.Reflection.BI"

end
def Prelude_46_Show_46_Backtick()
  return :"Prelude.Show.Backtick"

end
def Language_46_Reflection_46_Bind()
  return :"Language.Reflection.Bind"

end
def Language_46_Reflection_46_Binder(constructor_95_arg)
  return $__RTS.make_tuple(:"Language.Reflection.Binder",constructor_95_arg)

end
def Prelude_46_Bool_46_Bool()
  return :"Prelude.Bool.Bool"

end
def Ownership_46_Borrowed(constructor_95_arg)
  return $__RTS.make_tuple(:"Ownership.Borrowed",constructor_95_arg)

end
def Language_46_Reflection_46_Bound()
  return :"Language.Reflection.Bound"

end
def FFI_46_Boxed(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI.Boxed",constructor_95_arg)

end
def Language_46_Reflection_46_ByReflection()
  return :"Language.Reflection.ByReflection"

end
def CData()
  return :CData

end
def FFI_95_C_46_CFnPtr(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_C.CFnPtr",constructor_95_arg)

end
def FFI_95_C_46_C_95_Any()
  return :"FFI_C.C_Any"

end
def FFI_95_C_46_C_95_CData()
  return :"FFI_C.C_CData"

end
def FFI_95_C_46_C_95_Float()
  return :"FFI_C.C_Float"

end
def FFI_95_C_46_C_95_Fn()
  return :"FFI_C.C_Fn"

end
def FFI_95_C_46_C_95_FnBase()
  return :"FFI_C.C_FnBase"

end
def FFI_95_C_46_C_95_FnIO()
  return :"FFI_C.C_FnIO"

end
def FFI_95_C_46_C_95_FnT()
  return :"FFI_C.C_FnT"

end
def FFI_95_C_46_C_95_FnTypes(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_C.C_FnTypes",constructor_95_arg)

end
def FFI_95_C_46_C_95_IntBits16()
  return :"FFI_C.C_IntBits16"

end
def FFI_95_C_46_C_95_IntBits32()
  return :"FFI_C.C_IntBits32"

end
def FFI_95_C_46_C_95_IntBits64()
  return :"FFI_C.C_IntBits64"

end
def FFI_95_C_46_C_95_IntBits8()
  return :"FFI_C.C_IntBits8"

end
def FFI_95_C_46_C_95_IntChar()
  return :"FFI_C.C_IntChar"

end
def FFI_95_C_46_C_95_IntNative()
  return :"FFI_C.C_IntNative"

end
def FFI_95_C_46_C_95_IntT()
  return :"FFI_C.C_IntT"

end
def FFI_95_C_46_C_95_IntTypes(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_C.C_IntTypes",constructor_95_arg)

end
def FFI_95_C_46_C_95_MPtr()
  return :"FFI_C.C_MPtr"

end
def FFI_95_C_46_C_95_Ptr()
  return :"FFI_C.C_Ptr"

end
def FFI_95_C_46_C_95_Str()
  return :"FFI_C.C_Str"

end
def FFI_95_C_46_C_95_Types(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_C.C_Types",constructor_95_arg)

end
def FFI_95_C_46_C_95_Unit()
  return :"FFI_C.C_Unit"

end
def Language_46_Reflection_46_Errors_46_CantConvert()
  return :"Language.Reflection.Errors.CantConvert"

end
def Language_46_Reflection_46_Errors_46_CantInferType()
  return :"Language.Reflection.Errors.CantInferType"

end
def Language_46_Reflection_46_Errors_46_CantIntroduce()
  return :"Language.Reflection.Errors.CantIntroduce"

end
def Language_46_Reflection_46_Errors_46_CantMatch()
  return :"Language.Reflection.Errors.CantMatch"

end
def Language_46_Reflection_46_Errors_46_CantResolve()
  return :"Language.Reflection.Errors.CantResolve"

end
def Language_46_Reflection_46_Errors_46_CantResolveAlts()
  return :"Language.Reflection.Errors.CantResolveAlts"

end
def Language_46_Reflection_46_Errors_46_CantSolveGoal()
  return :"Language.Reflection.Errors.CantSolveGoal"

end
def Language_46_Reflection_46_Errors_46_CantUnify()
  return :"Language.Reflection.Errors.CantUnify"

end
def Language_46_Reflection_46_Case()
  return :"Language.Reflection.Case"

end
def Language_46_Reflection_46_CaseN()
  return :"Language.Reflection.CaseN"

end
def Prelude_46_Cast_46_Cast(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Cast.Cast",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Ch()
  return :"Language.Reflection.Ch"

end
def Language_46_Reflection_46_Claim()
  return :"Language.Reflection.Claim"

end
def Prelude_46_Nat_46_CmpEQ()
  return :"Prelude.Nat.CmpEQ"

end
def Prelude_46_Nat_46_CmpGT()
  return :"Prelude.Nat.CmpGT"

end
def Prelude_46_Nat_46_CmpLT()
  return :"Prelude.Nat.CmpLT"

end
def Prelude_46_Nat_46_CmpNat(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Nat.CmpNat",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Compute()
  return :"Language.Reflection.Compute"

end
def Language_46_Reflection_46_Const()
  return :"Language.Reflection.Const"

end
def Language_46_Reflection_46_Elab_46_Constraint()
  return :"Language.Reflection.Elab.Constraint"

end
def Language_46_Reflection_46_Elab_46_Constructor()
  return :"Language.Reflection.Elab.Constructor"

end
def Language_46_Reflection_46_Elab_46_ConstructorDefn()
  return :"Language.Reflection.Elab.ConstructorDefn"

end
def Language_46_Reflection_46_Elab_46_CtorArg()
  return :"Language.Reflection.Elab.CtorArg"

end
def Language_46_Reflection_46_Elab_46_CtorField()
  return :"Language.Reflection.Elab.CtorField"

end
def Language_46_Reflection_46_Elab_46_CtorParameter()
  return :"Language.Reflection.Elab.CtorParameter"

end
def Language_46_Reflection_46_DCon()
  return :"Language.Reflection.DCon"

end
def Prelude_46_File_46_DHandle(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.File.DHandle",constructor_95_arg)

end
def FFI_95_Export_46_DHere()
  return :"FFI_Export.DHere"

end
def Builtins_46_DPair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Builtins.DPair",constructor_95_arg,_constructor_95_arg)

end
def FFI_95_Export_46_DThere()
  return :"FFI_Export.DThere"

end
def FFI_95_Export_46_Data(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.Data",constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def FFI_95_Export_46_DataDefined(constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.DataDefined",constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_DataDefn()
  return :"Language.Reflection.Elab.DataDefn"

end
def Language_46_Reflection_46_Elab_46_Datatype()
  return :"Language.Reflection.Elab.Datatype"

end
def Prelude_46_Basics_46_Dec(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Basics.Dec",constructor_95_arg)

end
def Decidable_46_Equality_46_DecEq(constructor_95_arg)
  return $__RTS.make_tuple(:"Decidable.Equality.DecEq",constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Declare()
  return :"Language.Reflection.Elab.Declare"

end
def Language_46_Reflection_46_Elab_46_DefineDatatype()
  return :"Language.Reflection.Elab.DefineDatatype"

end
def Language_46_Reflection_46_Elab_46_DefineFun()
  return :"Language.Reflection.Elab.DefineFun"

end
def Delay(constructor_95_arg)
  return $__RTS.make_tuple(:Delay,constructor_95_arg)

end
def DelayReason()
  return :DelayReason

end
def Delayed(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:Delayed,constructor_95_arg,_constructor_95_arg)

end
def Prelude_46_File_46_Directory()
  return :"Prelude.File.Directory"

end
def Prelude_46_Show_46_Dollar()
  return :"Prelude.Show.Dollar"

end
def Prelude_46_Interfaces_46_EQ()
  return :"Prelude.Interfaces.EQ"

end
def Prelude_46_Either_46_Either(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Either.Either",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Elab(constructor_95_arg)
  return $__RTS.make_tuple(:"Language.Reflection.Elab.Elab",constructor_95_arg)

end
def Prelude_46_Pairs_46_Element()
  return :"Prelude.Pairs.Element"

end
def FFI_95_Export_46_End()
  return :"FFI_Export.End"

end
def Prelude_46_Enum(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Enum",constructor_95_arg)

end
def Prelude_46_Interfaces_46_Eq(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Interfaces.Eq",constructor_95_arg)

end
def Prelude_46_Show_46_Eq()
  return :"Prelude.Show.Eq"

end
def Language_46_Reflection_46_Elab_46_Erased()
  return :"Language.Reflection.Elab.Erased"

end
def Language_46_Reflection_46_Erased()
  return :"Language.Reflection.Erased"

end
def Language_46_Reflection_46_Elab_46_Erasure()
  return :"Language.Reflection.Elab.Erasure"

end
def Language_46_Reflection_46_Errors_46_Err()
  return :"Language.Reflection.Errors.Err"

end
def Prelude_46_Providers_46_Error()
  return :"Prelude.Providers.Error"

end
def Language_46_Reflection_46_ErrorReportPart()
  return :"Language.Reflection.ErrorReportPart"

end
def Prelude_46_Pairs_46_Evidence()
  return :"Prelude.Pairs.Evidence"

end
def Language_46_Reflection_46_Exact()
  return :"Language.Reflection.Exact"

end
def Prelude_46_Pairs_46_Exists(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Pairs.Exists",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Explicit()
  return :"Language.Reflection.Elab.Explicit"

end
def ForeignEnv_46_FEnv(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"ForeignEnv.FEnv",constructor_95_arg,_constructor_95_arg)

end
def FFI()
  return :FFI

end
def FFI_95_Export_46_FFI_95_Base(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.FFI_Base",constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_ExpType(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.FFI_ExpType",constructor_95_arg,_constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Export(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.FFI_Export",constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Exportable(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.FFI_Exportable",constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Fun(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.FFI_Fun",constructor_95_arg,_constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_IO(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.FFI_IO",constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Prim(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.FFI_Prim",constructor_95_arg)

end
def FFI_95_Export_46_FFI_95_Ret(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.FFI_Ret",constructor_95_arg)

end
def FFun()
  return :FFun

end
def FFI_46_FFunc()
  return :"FFI.FFunc"

end
def Prelude_46_File_46_FHandle(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.File.FHandle",constructor_95_arg)

end
def FRet()
  return :FRet

end
def FTy(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(:FTy,constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def FFI_46_FVar()
  return :"FFI.FVar"

end
def Language_46_Reflection_46_Fail()
  return :"Language.Reflection.Fail"

end
def Prelude_46_Bool_46_False()
  return :"Prelude.Bool.False"

end
def Prelude_46_File_46_File()
  return :"Prelude.File.File"

end
def Prelude_46_File_46_FileError()
  return :"Prelude.File.FileError"

end
def Language_46_Reflection_46_FileLoc()
  return :"Language.Reflection.FileLoc"

end
def Prelude_46_File_46_FileNotFound()
  return :"Prelude.File.FileNotFound"

end
def Prelude_46_File_46_FileReadError()
  return :"Prelude.File.FileReadError"

end
def Prelude_46_File_46_FileWriteError()
  return :"Prelude.File.FileWriteError"

end
def Language_46_Reflection_46_Fill()
  return :"Language.Reflection.Fill"

end
def Language_46_Reflection_46_Elab_46_Fixity()
  return :"Language.Reflection.Elab.Fixity"

end
def Language_46_Reflection_46_Fl()
  return :"Language.Reflection.Fl"

end
def Language_46_Reflection_46_Focus()
  return :"Language.Reflection.Focus"

end
def Prelude_46_Foldable_46_Foldable(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Foldable.Foldable",constructor_95_arg)

end
def Force(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  return _123_EVAL_95_0_125_(_123_arg_95_2_125_)

end
def FFI_46_ForeignName()
  return :"FFI.ForeignName"

end
def Language_46_Reflection_46_Forgot()
  return :"Language.Reflection.Forgot"

end
def Prelude_46_Interfaces_46_Fractional(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Interfaces.Fractional",constructor_95_arg)

end
def FFI_95_Export_46_Fun(constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_Export.Fun",constructor_95_arg,_constructor_95_arg,__constructor_95_arg,___constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_FunArg()
  return :"Language.Reflection.Elab.FunArg"

end
def Language_46_Reflection_46_Elab_46_FunClause(constructor_95_arg)
  return $__RTS.make_tuple(:"Language.Reflection.Elab.FunClause",constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_FunDefn(constructor_95_arg)
  return $__RTS.make_tuple(:"Language.Reflection.Elab.FunDefn",constructor_95_arg)

end
def Prelude_46_Functor_46_Functor(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Functor.Functor",constructor_95_arg)

end
def Language_46_Reflection_46_GHole()
  return :"Language.Reflection.GHole"

end
def Prelude_46_Interfaces_46_GT()
  return :"Prelude.Interfaces.GT"

end
def Prelude_46_File_46_GenericFileError()
  return :"Prelude.File.GenericFileError"

end
def Prelude_46_Nat_46_GetAdditive()
  return :"Prelude.Nat.GetAdditive"

end
def Prelude_46_Nat_46_GetMultiplicative()
  return :"Prelude.Nat.GetMultiplicative"

end
def Language_46_Reflection_46_GoalType()
  return :"Language.Reflection.GoalType"

end
def Language_46_Reflection_46_Guess()
  return :"Language.Reflection.Guess"

end
def Language_46_Reflection_46_Hole()
  return :"Language.Reflection.Hole"

end
def Language_46_Reflection_46_I()
  return :"Language.Reflection.I"

end
def IO_39_(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"IO'",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_IT16()
  return :"Language.Reflection.IT16"

end
def Language_46_Reflection_46_IT32()
  return :"Language.Reflection.IT32"

end
def Language_46_Reflection_46_IT64()
  return :"Language.Reflection.IT64"

end
def Language_46_Reflection_46_IT8()
  return :"Language.Reflection.IT8"

end
def Language_46_Reflection_46_ITBig()
  return :"Language.Reflection.ITBig"

end
def Language_46_Reflection_46_ITChar()
  return :"Language.Reflection.ITChar"

end
def Language_46_Reflection_46_ITFixed()
  return :"Language.Reflection.ITFixed"

end
def Language_46_Reflection_46_ITNative()
  return :"Language.Reflection.ITNative"

end
def Language_46_Reflection_46_Implementation()
  return :"Language.Reflection.Implementation"

end
def Language_46_Reflection_46_ImplementationCtorN()
  return :"Language.Reflection.ImplementationCtorN"

end
def Language_46_Reflection_46_ImplementationN()
  return :"Language.Reflection.ImplementationN"

end
def Language_46_Reflection_46_Elab_46_Implicit()
  return :"Language.Reflection.Elab.Implicit"

end
def Prelude_46_List_46_InBounds(constructor_95_arg,_constructor_95_arg,__constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.List.InBounds",constructor_95_arg,_constructor_95_arg,__constructor_95_arg)

end
def Prelude_46_List_46_InFirst()
  return :"Prelude.List.InFirst"

end
def Prelude_46_List_46_InLater()
  return :"Prelude.List.InLater"

end
def Language_46_Reflection_46_Errors_46_Inaccessible()
  return :"Language.Reflection.Errors.Inaccessible"

end
def Language_46_Reflection_46_Errors_46_IncompleteTerm()
  return :"Language.Reflection.Errors.IncompleteTerm"

end
def Language_46_Reflection_46_Induction()
  return :"Language.Reflection.Induction"

end
def Infinite()
  return :Infinite

end
def Language_46_Reflection_46_Errors_46_InfiniteUnify()
  return :"Language.Reflection.Errors.InfiniteUnify"

end
def Language_46_Reflection_46_Elab_46_Infix()
  return :"Language.Reflection.Elab.Infix"

end
def Language_46_Reflection_46_Elab_46_Infixl()
  return :"Language.Reflection.Elab.Infixl"

end
def Language_46_Reflection_46_Elab_46_Infixr()
  return :"Language.Reflection.Elab.Infixr"

end
def Language_46_Reflection_46_IntTy()
  return :"Language.Reflection.IntTy"

end
def Prelude_46_Interfaces_46_Integral(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Interfaces.Integral",constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_InternalMsg()
  return :"Language.Reflection.Errors.InternalMsg"

end
def Language_46_Reflection_46_Intro()
  return :"Language.Reflection.Intro"

end
def Language_46_Reflection_46_Intros()
  return :"Language.Reflection.Intros"

end
def Language_46_Reflection_46_Errors_46_InvalidTCArg()
  return :"Language.Reflection.Errors.InvalidTCArg"

end
def Prelude_46_Maybe_46_IsJust(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Maybe.IsJust",constructor_95_arg,_constructor_95_arg)

end
def Prelude_46_List_46_IsNonEmpty()
  return :"Prelude.List.IsNonEmpty"

end
def Prelude_46_Nat_46_IsSucc(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Nat.IsSucc",constructor_95_arg)

end
def Prelude_46_Maybe_46_ItIsJust()
  return :"Prelude.Maybe.ItIsJust"

end
def Prelude_46_Nat_46_ItIsSucc()
  return :"Prelude.Nat.ItIsSucc"

end
def JS_95_Float()
  return :JS_Float

end
def JS_95_Fn()
  return :JS_Fn

end
def JS_95_FnBase()
  return :JS_FnBase

end
def JS_95_FnIO()
  return :JS_FnIO

end
def JS_95_FnT()
  return :JS_FnT

end
def JS_95_FnTypes(constructor_95_arg)
  return $__RTS.make_tuple(:JS_FnTypes,constructor_95_arg)

end
def JS_95_IntChar()
  return :JS_IntChar

end
def JS_95_IntNative()
  return :JS_IntNative

end
def JS_95_IntT()
  return :JS_IntT

end
def JS_95_IntTypes(constructor_95_arg)
  return $__RTS.make_tuple(:JS_IntTypes,constructor_95_arg)

end
def JS_95_Ptr()
  return :JS_Ptr

end
def JS_95_Str()
  return :JS_Str

end
def JS_95_Types(constructor_95_arg)
  return $__RTS.make_tuple(:JS_Types,constructor_95_arg)

end
def JS_95_Unit()
  return :JS_Unit

end
def JsFn(constructor_95_arg)
  return $__RTS.make_tuple(:JsFn,constructor_95_arg)

end
def Prelude_46_Maybe_46_Just(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Maybe.Just",constructor_95_arg)

end
def Prelude_46_Interfaces_46_LT()
  return :"Prelude.Interfaces.LT"

end
def Prelude_46_Nat_46_LTE(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Nat.LTE",constructor_95_arg,_constructor_95_arg)

end
def Prelude_46_Nat_46_LTESucc()
  return :"Prelude.Nat.LTESucc"

end
def Prelude_46_Nat_46_LTEZero()
  return :"Prelude.Nat.LTEZero"

end
def Language_46_Reflection_46_Lam()
  return :"Language.Reflection.Lam"

end
def LazyValue()
  return :LazyValue

end
def Prelude_46_Either_46_Left(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Either.Left",constructor_95_arg)

end
def Prelude_46_Nat_46_LeftIsNotZero()
  return :"Prelude.Nat.LeftIsNotZero"

end
def Language_46_Reflection_46_Let()
  return :"Language.Reflection.Let"

end
def Language_46_Reflection_46_LetTac()
  return :"Language.Reflection.LetTac"

end
def Language_46_Reflection_46_LetTacTy()
  return :"Language.Reflection.LetTacTy"

end
def Prelude_46_List_46_List(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.List.List",constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_LoadingFailed()
  return :"Language.Reflection.Errors.LoadingFailed"

end
def Language_46_Reflection_46_MN()
  return :"Language.Reflection.MN"

end
def ManagedPtr()
  return :ManagedPtr

end
def Prelude_46_Interfaces_46_MaxBound(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Interfaces.MaxBound",constructor_95_arg)

end
def Prelude_46_Maybe_46_Maybe(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Maybe.Maybe",constructor_95_arg)

end
def Language_46_Reflection_46_MetaN()
  return :"Language.Reflection.MetaN"

end
def Language_46_Reflection_46_MethodN()
  return :"Language.Reflection.MethodN"

end
def Prelude_46_Interfaces_46_MinBound(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Interfaces.MinBound",constructor_95_arg)

end
def FFI_46_MkBoxed()
  return :"FFI.MkBoxed"

end
def FFI_95_C_46_MkCFnPtr(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_C.MkCFnPtr",constructor_95_arg)

end
def Builtins_46_MkDPair()
  return :"Builtins.MkDPair"

end
def Language_46_Reflection_46_Elab_46_MkDatatype()
  return :"Language.Reflection.Elab.MkDatatype"

end
def MkFFI()
  return :MkFFI

end
def Language_46_Reflection_46_Elab_46_MkFunArg()
  return :"Language.Reflection.Elab.MkFunArg"

end
def Language_46_Reflection_46_Elab_46_MkFunClause()
  return :"Language.Reflection.Elab.MkFunClause"

end
def MkIO(constructor_95_arg)
  return $__RTS.make_tuple(:MkIO,constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_MkImpossibleClause()
  return :"Language.Reflection.Elab.MkImpossibleClause"

end
def MkJsFn(constructor_95_arg)
  return $__RTS.make_tuple(:MkJsFn,constructor_95_arg)

end
def Builtins_46_MkPair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Builtins.MkPair",constructor_95_arg,_constructor_95_arg)

end
def FFI_95_C_46_MkRaw(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_C.MkRaw",constructor_95_arg)

end
def Prelude_46_Strings_46_MkString()
  return :"Prelude.Strings.MkString"

end
def Builtins_46_MkUPair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Builtins.MkUPair",constructor_95_arg,_constructor_95_arg)

end
def MkUnit()
  return :MkUnit

end
def Prelude_46_File_46_Mode()
  return :"Prelude.File.Mode"

end
def Prelude_46_Monad_46_Monad(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Monad.Monad",constructor_95_arg)

end
def Prelude_46_Algebra_46_Monoid(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Algebra.Monoid",constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_Msg()
  return :"Language.Reflection.Errors.Msg"

end
def Prelude_46_Nat_46_Multiplicative()
  return :"Prelude.Nat.Multiplicative"

end
def Language_46_Reflection_46_NS()
  return :"Language.Reflection.NS"

end
def Language_46_Reflection_46_NamePart()
  return :"Language.Reflection.NamePart"

end
def Language_46_Reflection_46_NameType()
  return :"Language.Reflection.NameType"

end
def Prelude_46_Nat_46_Nat()
  return :"Prelude.Nat.Nat"

end
def Language_46_Reflection_46_NativeTy()
  return :"Language.Reflection.NativeTy"

end
def Prelude_46_Interfaces_46_Neg(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Interfaces.Neg",constructor_95_arg)

end
def ForeignEnv_46_Nil()
  return :"ForeignEnv.Nil"

end
def Prelude_46_List_46_Nil()
  return :"Prelude.List.Nil"

end
def Prelude_46_Basics_46_No()
  return :"Prelude.Basics.No"

end
def Language_46_Reflection_46_Errors_46_NoRewriting()
  return :"Language.Reflection.Errors.NoRewriting"

end
def Language_46_Reflection_46_Errors_46_NoSuchVariable()
  return :"Language.Reflection.Errors.NoSuchVariable"

end
def Language_46_Reflection_46_Errors_46_NoTypeDecl()
  return :"Language.Reflection.Errors.NoTypeDecl"

end
def Language_46_Reflection_46_Errors_46_NoValidAlts()
  return :"Language.Reflection.Errors.NoValidAlts"

end
def Language_46_Reflection_46_Errors_46_NonCollapsiblePostulate()
  return :"Language.Reflection.Errors.NonCollapsiblePostulate"

end
def Prelude_46_List_46_NonEmpty(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.List.NonEmpty",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_NonFunctionType()
  return :"Language.Reflection.Errors.NonFunctionType"

end
def Prelude_46_Nat_46_NotBothZero(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Nat.NotBothZero",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_NotEquality()
  return :"Language.Reflection.Errors.NotEquality"

end
def Language_46_Reflection_46_Elab_46_NotErased()
  return :"Language.Reflection.Elab.NotErased"

end
def Language_46_Reflection_46_Errors_46_NotInjective()
  return :"Language.Reflection.Errors.NotInjective"

end
def Prelude_46_Maybe_46_Nothing()
  return :"Prelude.Maybe.Nothing"

end
def Language_46_Reflection_46_NullType()
  return :"Language.Reflection.NullType"

end
def Prelude_46_Interfaces_46_Num(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Interfaces.Num",constructor_95_arg)

end
def Prelude_46_Show_46_Open()
  return :"Prelude.Show.Open"

end
def Prelude_46_Interfaces_46_Ord(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Interfaces.Ord",constructor_95_arg)

end
def Prelude_46_Interfaces_46_Ordering()
  return :"Prelude.Interfaces.Ordering"

end
def Language_46_Reflection_46_P()
  return :"Language.Reflection.P"

end
def Language_46_Reflection_46_PVTy()
  return :"Language.Reflection.PVTy"

end
def Language_46_Reflection_46_PVar()
  return :"Language.Reflection.PVar"

end
def Builtins_46_Pair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Builtins.Pair",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_ParentN()
  return :"Language.Reflection.ParentN"

end
def Prelude_46_File_46_PermissionDenied()
  return :"Prelude.File.PermissionDenied"

end
def Language_46_Reflection_46_Pi()
  return :"Language.Reflection.Pi"

end
def Language_46_Reflection_46_Elab_46_Plicity()
  return :"Language.Reflection.Elab.Plicity"

end
def Prelude_46_Show_46_Prec()
  return :"Prelude.Show.Prec"

end
def Language_46_Reflection_46_Elab_46_Prefix()
  return :"Language.Reflection.Elab.Prefix"

end
def Prelude_46_Show_46_PrefixMinus()
  return :"Prelude.Show.PrefixMinus"

end
def PrimIO(constructor_95_arg)
  return $__RTS.make_tuple(:PrimIO,constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_AddImplementation()
  return :"Language.Reflection.Elab.Prim__AddImplementation"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Apply()
  return :"Language.Reflection.Elab.Prim__Apply"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Attack()
  return :"Language.Reflection.Elab.Prim__Attack"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_BindElab()
  return :"Language.Reflection.Elab.Prim__BindElab"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Check()
  return :"Language.Reflection.Elab.Prim__Check"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Claim()
  return :"Language.Reflection.Elab.Prim__Claim"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Compute()
  return :"Language.Reflection.Elab.Prim__Compute"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Converts()
  return :"Language.Reflection.Elab.Prim__Converts"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Debug()
  return :"Language.Reflection.Elab.Prim__Debug"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_DeclareDatatype()
  return :"Language.Reflection.Elab.Prim__DeclareDatatype"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_DeclareType()
  return :"Language.Reflection.Elab.Prim__DeclareType"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_DefineDatatype()
  return :"Language.Reflection.Elab.Prim__DefineDatatype"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_DefineFunction()
  return :"Language.Reflection.Elab.Prim__DefineFunction"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Env()
  return :"Language.Reflection.Elab.Prim__Env"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Fail()
  return :"Language.Reflection.Elab.Prim__Fail"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Fill()
  return :"Language.Reflection.Elab.Prim__Fill"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Fixity()
  return :"Language.Reflection.Elab.Prim__Fixity"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Focus()
  return :"Language.Reflection.Elab.Prim__Focus"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Forall()
  return :"Language.Reflection.Elab.Prim__Forall"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Gensym()
  return :"Language.Reflection.Elab.Prim__Gensym"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Goal()
  return :"Language.Reflection.Elab.Prim__Goal"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Guess()
  return :"Language.Reflection.Elab.Prim__Guess"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Holes()
  return :"Language.Reflection.Elab.Prim__Holes"

end
def Prim_95__95_IO(constructor_95_arg)
  return $__RTS.make_tuple(:Prim__IO,constructor_95_arg)

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Intro()
  return :"Language.Reflection.Elab.Prim__Intro"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_IsTCName()
  return :"Language.Reflection.Elab.Prim__IsTCName"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LetBind()
  return :"Language.Reflection.Elab.Prim__LetBind"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupArgs()
  return :"Language.Reflection.Elab.Prim__LookupArgs"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupDatatype()
  return :"Language.Reflection.Elab.Prim__LookupDatatype"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupFunDefn()
  return :"Language.Reflection.Elab.Prim__LookupFunDefn"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_LookupTy()
  return :"Language.Reflection.Elab.Prim__LookupTy"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_MatchApply()
  return :"Language.Reflection.Elab.Prim__MatchApply"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Metavar()
  return :"Language.Reflection.Elab.Prim__Metavar"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Namespace()
  return :"Language.Reflection.Elab.Prim__Namespace"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Normalise()
  return :"Language.Reflection.Elab.Prim__Normalise"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_PatBind()
  return :"Language.Reflection.Elab.Prim__PatBind"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_PatVar()
  return :"Language.Reflection.Elab.Prim__PatVar"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_PureElab()
  return :"Language.Reflection.Elab.Prim__PureElab"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_RecursiveElab()
  return :"Language.Reflection.Elab.Prim__RecursiveElab"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_ResolveTC()
  return :"Language.Reflection.Elab.Prim__ResolveTC"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Rewrite()
  return :"Language.Reflection.Elab.Prim__Rewrite"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Search()
  return :"Language.Reflection.Elab.Prim__Search"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Solve()
  return :"Language.Reflection.Elab.Prim__Solve"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_SourceLocation()
  return :"Language.Reflection.Elab.Prim__SourceLocation"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Try()
  return :"Language.Reflection.Elab.Prim__Try"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_TryCatch()
  return :"Language.Reflection.Elab.Prim__TryCatch"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Unfocus()
  return :"Language.Reflection.Elab.Prim__Unfocus"

end
def Language_46_Reflection_46_Elab_46_Prim_95__95_Whnf()
  return :"Language.Reflection.Elab.Prim__Whnf"

end
def Language_46_Reflection_46_Errors_46_ProgramLineComment()
  return :"Language.Reflection.Errors.ProgramLineComment"

end
def Language_46_Reflection_46_Errors_46_ProofSearchFail()
  return :"Language.Reflection.Errors.ProofSearchFail"

end
def Prelude_46_Providers_46_Provide()
  return :"Prelude.Providers.Provide"

end
def Prelude_46_Providers_46_Provider(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Providers.Provider",constructor_95_arg)

end
def Language_46_Reflection_46_Errors_46_ProviderError()
  return :"Language.Reflection.Errors.ProviderError"

end
def Ptr()
  return :Ptr

end
def FFI_46_QuickTypes(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI.QuickTypes",constructor_95_arg)

end
def FFI_46_Quick_95_Unsafe()
  return :"FFI.Quick_Unsafe"

end
def Language_46_Reflection_46_Quotable(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Language.Reflection.Quotable",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_RApp()
  return :"Language.Reflection.RApp"

end
def Language_46_Reflection_46_RBind()
  return :"Language.Reflection.RBind"

end
def Language_46_Reflection_46_RConstant()
  return :"Language.Reflection.RConstant"

end
def Language_46_Reflection_46_RType()
  return :"Language.Reflection.RType"

end
def Language_46_Reflection_46_RUType()
  return :"Language.Reflection.RUType"

end
def FFI_95_C_46_Raw(constructor_95_arg)
  return $__RTS.make_tuple(:"FFI_C.Raw",constructor_95_arg)

end
def Language_46_Reflection_46_Raw()
  return :"Language.Reflection.Raw"

end
def Language_46_Reflection_46_RawPart()
  return :"Language.Reflection.RawPart"

end
def Prelude_46_File_46_Read()
  return :"Prelude.File.Read"

end
def Ownership_46_Read()
  return :"Ownership.Read"

end
def Prelude_46_File_46_ReadAppend()
  return :"Prelude.File.ReadAppend"

end
def Prelude_46_File_46_ReadWrite()
  return :"Prelude.File.ReadWrite"

end
def Prelude_46_File_46_ReadWriteTruncate()
  return :"Prelude.File.ReadWriteTruncate"

end
def Language_46_Reflection_46_Ref()
  return :"Language.Reflection.Ref"

end
def Language_46_Reflection_46_Refine()
  return :"Language.Reflection.Refine"

end
def Refl()
  return :Refl

end
def Language_46_Reflection_46_ReflConst(constructor_95_arg)
  return $__RTS.make_tuple(:"Language.Reflection.ReflConst",constructor_95_arg)

end
def Language_46_Reflection_46_Reflect()
  return :"Language.Reflection.Reflect"

end
def Language_46_Reflection_46_Rewrite()
  return :"Language.Reflection.Rewrite"

end
def Prelude_46_Either_46_Right(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Either.Right",constructor_95_arg)

end
def Prelude_46_Nat_46_RightIsNotZero()
  return :"Prelude.Nat.RightIsNotZero"

end
def Prelude_46_Nat_46_S()
  return :"Prelude.Nat.S"

end
def Language_46_Reflection_46_SN()
  return :"Language.Reflection.SN"

end
def Language_46_Reflection_46_Search()
  return :"Language.Reflection.Search"

end
def Prelude_46_Algebra_46_Semigroup(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Algebra.Semigroup",constructor_95_arg)

end
def Language_46_Reflection_46_Seq()
  return :"Language.Reflection.Seq"

end
def Prelude_46_Show_46_Show(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Show.Show",constructor_95_arg)

end
def Prelude_46_WellFounded_46_Sized(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.WellFounded.Sized",constructor_95_arg)

end
def Language_46_Reflection_46_Skip()
  return :"Language.Reflection.Skip"

end
def Language_46_Reflection_46_Solve()
  return :"Language.Reflection.Solve"

end
def Language_46_Reflection_46_SourceFC()
  return :"Language.Reflection.SourceFC"

end
def Language_46_Reflection_46_SourceLocation()
  return :"Language.Reflection.SourceLocation"

end
def Language_46_Reflection_46_SpecialName()
  return :"Language.Reflection.SpecialName"

end
def Language_46_Reflection_46_Str()
  return :"Language.Reflection.Str"

end
def Prelude_46_Strings_46_StrCons(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Strings.StrCons",constructor_95_arg)

end
def Prelude_46_Strings_46_StrM(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Strings.StrM",constructor_95_arg)

end
def Prelude_46_Strings_46_StrNil()
  return :"Prelude.Strings.StrNil"

end
def Language_46_Reflection_46_StrType()
  return :"Language.Reflection.StrType"

end
def Prelude_46_Stream_46_Stream(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Stream.Stream",constructor_95_arg)

end
def Prelude_46_Strings_46_StringBuffer()
  return :"Prelude.Strings.StringBuffer"

end
def Language_46_Reflection_46_SubReport()
  return :"Language.Reflection.SubReport"

end
def Prelude_46_Pairs_46_Subset(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Pairs.Subset",constructor_95_arg,_constructor_95_arg)

end
def Symbol_95_(constructor_95_arg)
  return $__RTS.make_tuple(:Symbol_,constructor_95_arg)

end
def Language_46_Reflection_46_TCon()
  return :"Language.Reflection.TCon"

end
def Language_46_Reflection_46_TConst()
  return :"Language.Reflection.TConst"

end
def Language_46_Reflection_46_TT()
  return :"Language.Reflection.TT"

end
def Language_46_Reflection_46_TTName()
  return :"Language.Reflection.TTName"

end
def Language_46_Reflection_46_TTUExp()
  return :"Language.Reflection.TTUExp"

end
def Language_46_Reflection_46_TType()
  return :"Language.Reflection.TType"

end
def Language_46_Reflection_46_Tactic()
  return :"Language.Reflection.Tactic"

end
def Language_46_Reflection_46_TermPart()
  return :"Language.Reflection.TermPart"

end
def Language_46_Reflection_46_TextPart()
  return :"Language.Reflection.TextPart"

end
def TheWorld(constructor_95_arg)
  return $__RTS.make_tuple(:TheWorld,constructor_95_arg)

end
def Language_46_Reflection_46_TheWorld()
  return :"Language.Reflection.TheWorld"

end
def Language_46_Reflection_46_Errors_46_TooManyArguments()
  return :"Language.Reflection.Errors.TooManyArguments"

end
def Prelude_46_Traversable_46_Traversable(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Traversable.Traversable",constructor_95_arg)

end
def Language_46_Reflection_46_Trivial()
  return :"Language.Reflection.Trivial"

end
def Prelude_46_Bool_46_True()
  return :"Prelude.Bool.True"

end
def Language_46_Reflection_46_Try()
  return :"Language.Reflection.Try"

end
def Language_46_Reflection_46_Elab_46_TyConArg()
  return :"Language.Reflection.Elab.TyConArg"

end
def Language_46_Reflection_46_Elab_46_TyConIndex()
  return :"Language.Reflection.Elab.TyConIndex"

end
def Language_46_Reflection_46_Elab_46_TyConParameter()
  return :"Language.Reflection.Elab.TyConParameter"

end
def Language_46_Reflection_46_Elab_46_TyDecl()
  return :"Language.Reflection.Elab.TyDecl"

end
def Language_46_Reflection_46_UN()
  return :"Language.Reflection.UN"

end
def Builtins_46_UPair(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Builtins.UPair",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_UType()
  return :"Language.Reflection.UType"

end
def Language_46_Reflection_46_UVal()
  return :"Language.Reflection.UVal"

end
def Language_46_Reflection_46_UVar()
  return :"Language.Reflection.UVar"

end
def Language_46_Reflection_46_Unfocus()
  return :"Language.Reflection.Unfocus"

end
def Language_46_Reflection_46_Errors_46_UnifyScope()
  return :"Language.Reflection.Errors.UnifyScope"

end
def Prelude_46_Uninhabited_46_Uninhabited(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Uninhabited.Uninhabited",constructor_95_arg)

end
def Language_46_Reflection_46_UniqueType()
  return :"Language.Reflection.UniqueType"

end
def Unit()
  return :Unit

end
def Language_46_Reflection_46_Universe()
  return :"Language.Reflection.Universe"

end
def Language_46_Reflection_46_Errors_46_UniverseError()
  return :"Language.Reflection.Errors.UniverseError"

end
def Language_46_Reflection_46_Errors_46_UnknownImplicit()
  return :"Language.Reflection.Errors.UnknownImplicit"

end
def FFI_46_UnsafeRaw()
  return :"FFI.UnsafeRaw"

end
def Prelude_46_Show_46_User()
  return :"Prelude.Show.User"

end
def Language_46_Reflection_46_V()
  return :"Language.Reflection.V"

end
def Language_46_Reflection_46_Var()
  return :"Language.Reflection.Var"

end
def Void()
  return :Void

end
def Language_46_Reflection_46_VoidType()
  return :"Language.Reflection.VoidType"

end
def Prelude_46_WellFounded_46_WellFounded(constructor_95_arg,_constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.WellFounded.WellFounded",constructor_95_arg,_constructor_95_arg)

end
def Language_46_Reflection_46_WhereN()
  return :"Language.Reflection.WhereN"

end
def Language_46_Reflection_46_Errors_46_WithFnType()
  return :"Language.Reflection.Errors.WithFnType"

end
def Language_46_Reflection_46_WithN()
  return :"Language.Reflection.WithN"

end
def World()
  return :World

end
def Language_46_Reflection_46_WorldType()
  return :"Language.Reflection.WorldType"

end
def Prelude_46_File_46_WriteTruncate()
  return :"Prelude.File.WriteTruncate"

end
def Prelude_46_Basics_46_Yes()
  return :"Prelude.Basics.Yes"

end
def Prelude_46_Nat_46_Z()
  return :"Prelude.Nat.Z"

end
def Main_46_assert(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_w_95_3_125_)
  return $__RTS.assert2(_123_arg_95_1_125_,_123_arg_95_2_125_)

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
  if valToMatch == false
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_3_125_)

  elsif valToMatch == true
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_2_125_)

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
  _123_in_95_1_125_ = Main_46_assert(nil,Main_46_plus_39_(2,2),4,_123_in_95_0_125_)
  _123_in_95_2_125_ = nil
  _123_in_95_2_125_ = Main_46_assert(nil,Main_46_mult_39_(3,Main_46_plus_39_(2,2)),12,_123_in_95_0_125_)
  _123_in_95_4_125_ = nil
  _123_in_95_4_125_ = $__RTS.op_write_str(_123_in_95_0_125_,$__RTS.op_str_concat($__RTS.op_str_concat("[",$__RTS.op_str_concat(Prelude_46_Show_46_Prelude_46_Show_46__64_Prelude_46_Show_46_Show_36_List_32_a_58__33_show_58_0_58_show_39__58_0(nil,nil,_123_U_95_Main_46__123_main_95_0_125__95_1_125_(),"",Main_46_reverse_58_revAcc_58_0(nil,nil,:"Prelude.List.Nil",$__RTS.make_tuple(:"Prelude.List.::",1,$__RTS.make_tuple(:"Prelude.List.::",2,$__RTS.make_tuple(:"Prelude.List.::",3,:"Prelude.List.Nil"))))),"]")),"\n"))
  _123_in_95_5_125_ = nil
  _123_in_95_5_125_ = nil
  _123_in_95_6_125_ = nil
  _123_in_95_6_125_ = Main_46_assert(nil,Main_46_reverse_58_revAcc_58_0(nil,nil,:"Prelude.List.Nil",$__RTS.make_tuple(:"Prelude.List.::",1,$__RTS.make_tuple(:"Prelude.List.::",2,$__RTS.make_tuple(:"Prelude.List.::",3,:"Prelude.List.Nil")))),$__RTS.make_tuple(:"Prelude.List.::",3,$__RTS.make_tuple(:"Prelude.List.::",2,$__RTS.make_tuple(:"Prelude.List.::",1,:"Prelude.List.Nil"))),_123_in_95_0_125_)
  _123_in_95_7_125_ = nil
  _123_in_95_7_125_ = $__RTS.op_write_str(_123_in_95_0_125_,$__RTS.op_str_concat("The answer!","\n"))
  _123_in_95_8_125_ = nil
  _123_in_95_8_125_ = nil
  _123_in_95_9_125_ = nil
  _123_in_95_9_125_ = $__RTS.op_write_str(_123_in_95_0_125_,$__RTS.op_str_concat(Prelude_46_Show_46_primNumShow(nil,_123_U_95_prim_95__95_toStrBigInt_95_1_125_(),:"Prelude.Show.Open",14),"\n"))
  return nil

end
def mkForeignPrim()
  return nil

end
def Main_46_mult_39_(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == 0
    caseMerged = 0

  else
    _123_in_95_2_125_ = nil
    _123_in_95_2_125_ = $__RTS.op_minus(_123_arg_95_0_125_,1)
    caseMerged = Main_46_plus_39_(_123_arg_95_1_125_,Main_46_mult_39_(_123_in_95_2_125_,_123_arg_95_1_125_))

  end
  return caseMerged

end
def Prelude_46_Bool_46_not(_123_arg_95_0_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == false
    caseMerged = true

  elsif valToMatch == true
    caseMerged = false

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  return caseMerged

end
def Main_46_plus_39_(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == 0
    caseMerged = _123_arg_95_1_125_

  else
    _123_in_95_2_125_ = nil
    _123_in_95_2_125_ = $__RTS.op_minus(_123_arg_95_0_125_,1)
    caseMerged = $__RTS.op_plus(Main_46_plus_39_(_123_in_95_2_125_,_123_arg_95_1_125_),1)

  end
  return caseMerged

end
def Prelude_46_Show_46_precCon(_123_arg_95_0_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == :"Prelude.Show.App"
    caseMerged = 6

  elsif valToMatch == :"Prelude.Show.Backtick"
    caseMerged = 3

  elsif valToMatch == :"Prelude.Show.Dollar"
    caseMerged = 2

  elsif valToMatch == :"Prelude.Show.Eq"
    caseMerged = 1

  elsif valToMatch == :"Prelude.Show.Open"
    caseMerged = 0

  elsif valToMatch == :"Prelude.Show.PrefixMinus"
    caseMerged = 5

  elsif valToMatch == :"Prelude.Show.User"
    caseMerged = 4

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
  if valToMatch == :"Prelude.Show.App"
    caseMerged = 6

  elsif valToMatch == :"Prelude.Show.Backtick"
    caseMerged = 3

  elsif valToMatch == :"Prelude.Show.Dollar"
    caseMerged = 2

  elsif valToMatch == :"Prelude.Show.Eq"
    caseMerged = 1

  elsif valToMatch == :"Prelude.Show.Open"
    caseMerged = 0

  elsif valToMatch == :"Prelude.Show.PrefixMinus"
    caseMerged = 5

  elsif valToMatch == :"Prelude.Show.User"
    caseMerged = 4

  else
    $__RTS.error("pattern matching failed")
    caseMerged = nil

  end
  _valToMatch = nil
  _valToMatch = Prelude_46_Interfaces_46_Prelude_46_Interfaces_46__64_Prelude_46_Interfaces_46_Ord_36_Integer_58__33_compare_58_0(caseMerged,5)
  ___caseMerged = nil
  if _valToMatch == :"Prelude.Interfaces.GT"
    ___caseMerged = true

  else
    __valToMatch = nil
    __valToMatch = _123_arg_95_2_125_
    _caseMerged = nil
    if __valToMatch == :"Prelude.Show.App"
      _caseMerged = 6

    elsif __valToMatch == :"Prelude.Show.Backtick"
      _caseMerged = 3

    elsif __valToMatch == :"Prelude.Show.Dollar"
      _caseMerged = 2

    elsif __valToMatch == :"Prelude.Show.Eq"
      _caseMerged = 1

    elsif __valToMatch == :"Prelude.Show.Open"
      _caseMerged = 0

    elsif __valToMatch == :"Prelude.Show.PrefixMinus"
      _caseMerged = 5

    elsif __valToMatch == :"Prelude.Show.User"
      _caseMerged = 4

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
  if ____valToMatch == false
    ____caseMerged = false

  elsif ____valToMatch == true
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
    if ______valToMatch == :"Prelude.Basics.No"
      ______caseMerged = false

    elsif ______valToMatch == :"Prelude.Basics.Yes"
      _______valToMatch = nil
      _______valToMatch = $__RTS.op_eq($__RTS.op_str_head(_123_in_95_4_125_),"-")
      _______caseMerged = nil
      if _______valToMatch == 0
        _______caseMerged = false

      else
        _______caseMerged = true

      end
      ______caseMerged = _______caseMerged

    else
      $__RTS.error("pattern matching failed")
      ______caseMerged = nil

    end
    ____caseMerged = ______caseMerged

  else
    $__RTS.error("pattern matching failed")
    ____caseMerged = nil

  end
  _____valToMatch = nil
  _____valToMatch = ____caseMerged
  _____caseMerged = nil
  if _____valToMatch == false
    _____caseMerged = _123_in_95_4_125_

  elsif _____valToMatch == true
    _____caseMerged = $__RTS.op_str_concat("(",$__RTS.op_str_concat(_123_in_95_4_125_,")"))

  else
    $__RTS.error("pattern matching failed")
    _____caseMerged = nil

  end
  return _____caseMerged

end
def prim_95__95_addBigInt(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return $__RTS.op_plus(_123_arg_95_0_125_,_123_arg_95_1_125_)

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
def Prelude_46_Show_46_show(_123_arg_95_0_125_,_123_arg_95_1_125_)
  return _123_arg_95_1_125_

end
def Prelude_46_Show_46_showParens(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == false
    caseMerged = _123_arg_95_1_125_

  elsif valToMatch == true
    caseMerged = $__RTS.op_str_concat("(",$__RTS.op_str_concat(_123_arg_95_1_125_,")"))

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
  if valToMatch == false
    caseMerged = _123_EVAL_95_0_125_(_123_arg_95_1_125_)

  elsif valToMatch == true
    caseMerged = _123_arg_95_0_125_

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
  if valToMatch == :"{U_Main.{main_0}_1}"
    caseMerged = Main_46__123_main_95_0_125_(_123_arg_95_0_125_)

  elsif valToMatch == :"{U_prim__toStrBigInt_1}"
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
  return :"{__Infer_0}"

end
def _123__95__95_infer_95_0_125_()
  return :"{__infer_0}"

end
def Main_46__123_main_95_0_125_(_123_lift_95_0_125_)
  return Prelude_46_Show_46_primNumShow(nil,_123_U_95_prim_95__95_toStrBigInt_95_1_125_(),:"Prelude.Show.Open",_123_lift_95_0_125_)

end
def _123_runMain_95_0_125_()
  return _123_EVAL_95_0_125_(Main_46_main(nil))

end
def _123_U_95_Main_46__123_main_95_0_125__95_1_125_()
  return :"{U_Main.{main_0}_1}"

end
def _123_U_95_prim_95__95_toStrBigInt_95_1_125_()
  return :"{U_prim__toStrBigInt_1}"

end
def Main_46_reverse_58_revAcc_58_0(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_3_125_
  caseMerged = nil
  if valToMatch == :"Prelude.List.Nil"
    caseMerged = _123_arg_95_2_125_

  else
    if $__RTS.is_tuple(valToMatch)
      if valToMatch == :"Prelude.List.::"
        _123_in_95_4_125_ = nil
        _123_in_95_4_125_ = $__RTS.proj(valToMatch,1)
        _123_in_95_5_125_ = nil
        _123_in_95_5_125_ = $__RTS.proj(valToMatch,2)
        caseMerged = Main_46_reverse_58_revAcc_58_0(nil,nil,$__RTS.make_tuple(:"Prelude.List.::",_123_in_95_4_125_,_123_arg_95_2_125_),_123_in_95_5_125_)

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
def Prelude_46_Show_46_Prelude_46_Show_46__64_Prelude_46_Show_46_Show_36_List_32_a_58__33_show_58_0_58_show_39__58_0(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_,_123_arg_95_3_125_,_123_arg_95_4_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_4_125_
  caseMerged = nil
  if valToMatch == :"Prelude.List.Nil"
    caseMerged = _123_arg_95_3_125_

  else
    if $__RTS.is_tuple(valToMatch)
      if valToMatch == :"Prelude.List.::"
        _123_in_95_5_125_ = nil
        _123_in_95_5_125_ = $__RTS.proj(valToMatch,1)
        _123_in_95_6_125_ = nil
        _123_in_95_6_125_ = $__RTS.proj(valToMatch,2)
        _valToMatch = nil
        _valToMatch = _123_in_95_6_125_
        _caseMerged = nil
        if _valToMatch == :"Prelude.List.Nil"
          _caseMerged = $__RTS.op_str_concat(_123_arg_95_3_125_,_123_APPLY_95_0_125_(_123_arg_95_2_125_,_123_in_95_5_125_))

        else
          _caseMerged = Prelude_46_Show_46_Prelude_46_Show_46__64_Prelude_46_Show_46_Show_36_List_32_a_58__33_show_58_0_58_show_39__58_0(nil,nil,_123_arg_95_2_125_,$__RTS.op_str_concat(_123_arg_95_3_125_,$__RTS.op_str_concat(_123_APPLY_95_0_125_(_123_arg_95_2_125_,_123_in_95_5_125_),", ")),_123_in_95_6_125_)

        end
        caseMerged = _caseMerged

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
def Decidable_46_Equality_46_Decidable_46_Equality_46__64_Decidable_46_Equality_46_DecEq_36_Bool_58__33_decEq_58_0(_123_arg_95_0_125_,_123_arg_95_1_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_1_125_
  caseMerged = nil
  if valToMatch == false
    _valToMatch = nil
    _valToMatch = _123_arg_95_0_125_
    _caseMerged = nil
    if _valToMatch == false
      _caseMerged = :"Prelude.Basics.Yes"

    elsif _valToMatch == true
      _caseMerged = :"Prelude.Basics.No"

    else
      $__RTS.error("pattern matching failed")
      _caseMerged = nil

    end
    caseMerged = _caseMerged

  elsif valToMatch == true
    _valToMatch = nil
    _valToMatch = _123_arg_95_0_125_
    _caseMerged = nil
    if _valToMatch == false
      _caseMerged = :"Prelude.Basics.No"

    elsif _valToMatch == true
      _caseMerged = :"Prelude.Basics.Yes"

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
      _caseMerged = :"Prelude.Interfaces.GT"

    else
      _caseMerged = :"Prelude.Interfaces.LT"

    end
    caseMerged = _caseMerged

  else
    caseMerged = :"Prelude.Interfaces.EQ"

  end
  return caseMerged

end
def _95_Prelude_46_Interfaces_46_Prelude_46_Show_46__64_Prelude_46_Interfaces_46_Ord_36_Prec_58__33__62__58_0_95_with_95_28(_123_arg_95_0_125_,_123_arg_95_1_125_,_123_arg_95_2_125_)
  valToMatch = nil
  valToMatch = _123_arg_95_0_125_
  caseMerged = nil
  if valToMatch == :"Prelude.Interfaces.GT"
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
  if valToMatch == :"Prelude.Basics.No"
    caseMerged = :"Prelude.Strings.StrNil"

  elsif valToMatch == :"Prelude.Basics.Yes"
    caseMerged = $__RTS.make_tuple(:"Prelude.Strings.StrCons",$__RTS.op_str_head(_123_arg_95_0_125_))

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
  if valToMatch == :"Prelude.Strings.StrNil"
    caseMerged = false

  else
    if $__RTS.is_tuple(valToMatch)
      if valToMatch == :"Prelude.Strings.StrCons"
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
  return :"Prelude.Interfaces.Abs_ictor"

end
def Prelude_46_Applicative_46_Alternative_95_ictor()
  return :"Prelude.Applicative.Alternative_ictor"

end
def Prelude_46_Applicative_46_Applicative_95_ictor()
  return :"Prelude.Applicative.Applicative_ictor"

end
def Prelude_46_Cast_46_Cast_95_ictor()
  return :"Prelude.Cast.Cast_ictor"

end
def Decidable_46_Equality_46_DecEq_95_ictor()
  return :"Decidable.Equality.DecEq_ictor"

end
def Prelude_46_Enum_95_ictor()
  return :"Prelude.Enum_ictor"

end
def Prelude_46_Interfaces_46_Eq_95_ictor()
  return :"Prelude.Interfaces.Eq_ictor"

end
def Prelude_46_Foldable_46_Foldable_95_ictor()
  return :"Prelude.Foldable.Foldable_ictor"

end
def Prelude_46_Interfaces_46_Fractional_95_ictor()
  return :"Prelude.Interfaces.Fractional_ictor"

end
def Prelude_46_Functor_46_Functor_95_ictor()
  return :"Prelude.Functor.Functor_ictor"

end
def Prelude_46_Interfaces_46_Integral_95_ictor()
  return :"Prelude.Interfaces.Integral_ictor"

end
def Prelude_46_Interfaces_46_MaxBound_95_ictor()
  return :"Prelude.Interfaces.MaxBound_ictor"

end
def Prelude_46_Interfaces_46_MinBound_95_ictor()
  return :"Prelude.Interfaces.MinBound_ictor"

end
def Prelude_46_Monad_46_Monad_95_ictor()
  return :"Prelude.Monad.Monad_ictor"

end
def Prelude_46_Algebra_46_Monoid_95_ictor()
  return :"Prelude.Algebra.Monoid_ictor"

end
def Prelude_46_Interfaces_46_Neg_95_ictor()
  return :"Prelude.Interfaces.Neg_ictor"

end
def Prelude_46_Interfaces_46_Num_95_ictor()
  return :"Prelude.Interfaces.Num_ictor"

end
def Prelude_46_Interfaces_46_Ord_95_ictor()
  return :"Prelude.Interfaces.Ord_ictor"

end
def Language_46_Reflection_46_Quotable_95_ictor()
  return :"Language.Reflection.Quotable_ictor"

end
def Language_46_Reflection_46_ReflConst_95_ictor()
  return :"Language.Reflection.ReflConst_ictor"

end
def Prelude_46_Algebra_46_Semigroup_95_ictor()
  return :"Prelude.Algebra.Semigroup_ictor"

end
def Prelude_46_Show_46_Show_95_ictor(constructor_95_arg)
  return $__RTS.make_tuple(:"Prelude.Show.Show_ictor",constructor_95_arg)

end
def Prelude_46_WellFounded_46_Sized_95_ictor()
  return :"Prelude.WellFounded.Sized_ictor"

end
def Prelude_46_Traversable_46_Traversable_95_ictor()
  return :"Prelude.Traversable.Traversable_ictor"

end
def Prelude_46_Uninhabited_46_Uninhabited_95_ictor()
  return :"Prelude.Uninhabited.Uninhabited_ictor"

end
def Prelude_46_WellFounded_46_WellFounded_95_ictor()
  return :"Prelude.WellFounded.WellFounded_ictor"

end
_123_runMain_95_0_125_()
