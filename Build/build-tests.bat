@echo off
SET ROOT=%~dp0..
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\MSBuild.exe" %ROOT%\Build\tests.msbuild /verbosity:normal /p:Configuration=Release /p:Platform="AnyCPU" /target:CleanAndBuild /p:RestorePackages=false
if %errorlevel% neq 0 exit /b %errorlevel%