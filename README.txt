The issue only happens when doing a "release" build. Not in debug builds.

Error message on Windows:

error LNK2019: unresolved external symbol _D15taggedalgebraic__T15TaggedAlgebraicTS4stdx4data4json5value9JSONValue12PayloadUnionZQCn__T8opEqualsTxSQDz__TQDlTQCxZQDtTxQuZQBiMxFKxQBfZb referenced in function _D15taggedalgebraic__T15TaggedAlgebraicTS4stdx4data4json5value9JSONValue12PayloadUnionZQCn11__xopEqualsFKxSQEb__TQDnTQCzZQDvKxQuZb
.dub\build\application-release-windows-x86_64-ldc_2082-18E1F147E6E08F453314A154EDED3D3E\app.exe : fatal error LNK1120: 1 unresolved externals
Error: C:\Program Files (x86)\Microsoft Visual Studio\2017\Enterprise\VC\Tools\MSVC\14.16.27023\bin\HostX64\x64\link.exe failed with status: 1120

On GNU/Linux (64-bit Arch Linux):

$ dub build -b release
Performing "release" build using /usr/bin/dmd for x86_64.
taggedalgebraic 0.10.12: target for configuration "library" is up to date.
std_data_json 0.18.2: target for configuration "library" is up to date.
lib2 ~master: target for configuration "library" is up to date.
lib1 ~master: target for configuration "library" is up to date.
app ~master: building configuration "application"...
Linking...
/usr/bin/ld: .dub/build/application-release-linux.posix-x86_64-dmd_2083-67B75C1A80895DFCF8DCC5A00A74779A/app.o: in function `_D15taggedalgebraic__T15TaggedAlgebraicTS4stdx4data4json5value9JSONValue12PayloadUnionZQCn11__xopEqualsFKxSQEb__TQDnTQCzZQDvKxQuZb':
source/app.d:(.text._D15taggedalgebraic__T15TaggedAlgebraicTS4stdx4data4json5value9JSONValue12PayloadUnionZQCn11__xopEqualsFKxSQEb__TQDnTQCzZQDvKxQuZb[_D15taggedalgebraic__T15TaggedAlgebraicTS4stdx4data4json5value9JSONValue12PayloadUnionZQCn11__xopEqualsFKxSQEb__TQDnTQCzZQDvKxQuZb]+0x14): undefined reference to `_D15taggedalgebraic__T15TaggedAlgebraicTS4stdx4data4json5value9JSONValue12PayloadUnionZQCn__T8opEqualsTxSQDz__TQDlTQCxZQDtTxQuZQBiMxFKxQBfZb'
collect2: error: ld returned 1 exit status
Error: linker exited with status 1
/usr/bin/dmd failed with exit code 1.
