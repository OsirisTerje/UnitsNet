@echo off
set ROOT=%~dp0..
set SrcDir="%ROOT%\Artifacts\Bin\Src"
set SrcUnsignedDir="%ROOT%\Artifacts\Bin\Src-unsigned"

echo Build unsigned binaries.
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\MSBuild.exe" %ROOT%\Build\build-all.msbuild /verbosity:minimal /p:Configuration=Debug /target:Clean;Rebuild /p:RestorePackages=false
if %errorlevel% neq 0 exit /b %errorlevel%

echo Move unsigned binaries to: %SrcUnsignedDir%
if exist %SrcUnsignedDir% rmdir /Q /S %SrcUnsignedDir%
ren %SrcDir% "Src-unsigned"
if %errorlevel% neq 0 exit /b %errorlevel%