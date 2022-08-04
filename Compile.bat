@echo off
title BrainC Compiler.
mkdir dist
glue srlua.exe main.lua dist/brainc.exe
copy brainfuck.exe dist/brainfuck.exe
echo Successfully Compiled BrainC
explorer dist
pause >nul