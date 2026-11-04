@echo off
set SRC=build\ASTSynth_artefacts\Release\VST3\AST Synth.vst3
set DST=%CommonProgramFiles%\VST3\AST Synth.vst3
if not exist "%SRC%" (echo [ERROR] Plugin not built yet. Run build.bat or put "AST Synth.vst3" folder next to this script. & exit /b 1)
xcopy /E /I /Y "%SRC%" "%DST%" || (echo [ERROR] Run this script as Administrator. & exit /b 1)
echo Installed to %DST%
echo In FL Studio: Options - Manage plugins - Find installed plugins.
