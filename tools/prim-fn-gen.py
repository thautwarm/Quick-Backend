import sys
CTOR = sys.argv[1]

code = """
LPlus ArithTy | LMinus ArithTy | LTimes ArithTy
| LUDiv IntTy | LSDiv ArithTy | LURem IntTy | LSRem ArithTy
| LAnd IntTy | LOr IntTy | LXOr IntTy | LCompl IntTy
| LSHL IntTy | LLSHR IntTy | LASHR IntTy
| LEq ArithTy | LLt IntTy | LLe IntTy | LGt IntTy | LGe IntTy
| LSLt ArithTy | LSLe ArithTy | LSGt ArithTy | LSGe ArithTy
| LSExt IntTy IntTy | LZExt IntTy IntTy | LTrunc IntTy IntTy
| LStrConcat | LStrLt | LStrEq | LStrLen
| LIntFloat IntTy | LFloatInt IntTy | LIntStr IntTy | LStrInt IntTy
| LFloatStr | LStrFloat | LChInt IntTy | LIntCh IntTy
| LBitCast ArithTy ArithTy
| LFExp | LFLog | LFSin | LFCos | LFTan | LFASin | LFACos | LFATan
| LFATan2 | LFSqrt | LFFloor | LFCeil | LFNegate

| LStrHead | LStrTail | LStrCons | LStrIndex | LStrRev | LStrSubstr
| LReadStr | LWriteStr
| LSystemInfo
| LFork
| LPar
| LExternal Name
| LCrash
| LNoOp
"""
code = code.replace('\n', '')
def ctor(lst):
    lst = tuple(lst)
    return "{0} {2} -> {3} \"prim-{1}\"".format(
        lst[0],
        lst[0].lower()[1:],
        " ".join(map(lambda _: '_', lst[1:])),
        CTOR
    )

sep = '\n    '

print(sep + sep.join([ctor(filter(lambda _: _, each.split(' '))) for each in code.split('|')]))
