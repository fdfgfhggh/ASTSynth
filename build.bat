@echo off
setlocal
echo === AST Synth: build VST3 ===
where cmake >nul 2>nul || (echo [ERROR] CMake not found. Install: winget install Kitware.CMake & exit /b 1)
where git   >nul 2>nul || (echo [ERROR] Git not found.   Install: winget install Git.Git & exit /b 1)
cmake -S . -B build -G "Visual Studio 17 2022" -A x64 || exit /b 1
cmake --build build --config Release --target ASTSynth_VST3 || exit /b 1
echo.
echo DONE: build\ASTSynth_artefacts\Release\VST3\AST Synth.vst3
echo Next: run install.bat as Administrator.
