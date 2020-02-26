module FFI
%hide IO
%access public export


data UnsafeRaw;
data Boxed t = MkBoxed t

Unsafe : Type
Unsafe = Boxed UnsafeRaw

mutual

    data QuickTypes : Type -> Type where
        Quick_Unsafe   : QuickTypes Unsafe

    data ForeignName
       = FFunc String
       | FVar String
    
    FFIQuick : FFI
    FFIQuick = MkFFI QuickTypes ForeignName String

    public export
    IO : Type -> Type
    IO = IO' FFIQuick

FF0 : Type
FF0 = IO Unsafe

FF1 : Type
FF1 = Unsafe -> IO Unsafe

FF2 : Type
FF2 = Unsafe -> Unsafe -> IO Unsafe

FF3 : Type
FF3 = Unsafe -> Unsafe -> Unsafe -> IO Unsafe

||| call foreign language apis
%inline
fcall: (ty : Type) -> (fname : ForeignName) -> {auto fty : FTy FFIQuick [] ty} -> ty
fcall ty fname = foreign FFIQuick fname ty

%inline
fv : String -> IO Unsafe
fv n = fcall (IO Unsafe) (FVar n)

%inline
callff0 : String -> IO Unsafe
callff0 n = fcall FF0 (FFunc n)

%inline
callff1 : String -> Unsafe -> IO Unsafe
callff1 n src = fcall FF1 (FFunc n) src

%inline
callff2 : String -> Unsafe ->  Unsafe -> IO Unsafe
callff2 n src1 src2 = fcall FF2 (FFunc n) src1 src2

%inline
callff3 : String -> Unsafe ->  Unsafe -> Unsafe -> IO Unsafe
callff3 n src1 src2 src3 = fcall FF3 (FFunc n) src1 src2 src3
