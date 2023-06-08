@echo off
rmdir "Build" /s /q
mkdir "Build"

:: Windows

:: Release
:: clang "Source/windows/display.c" "Source/main.c" -I "Include" -o "Build/release.exe" -lgdi32 -std=c11 -pedantic -Wall -Wextra -Werror -O3 -ffast-math -s
:: llvm-strip "Build/release.exe" --strip-all

:: Debug
clang "Source/windows/display.c" "Source/windows/opengl.c" "Source/main.c" -I "Include" -o "Build/debug.exe" -lgdi32 -std=c11 -pedantic -Wall -Wextra -Werror -O0 -ffast-math -g -fsanitize=address

:: Tidy

setlocal EnableDelayedExpansion

set SOURCE_FOLDER="Source"
set INCLUDE_FOLDER="Include"

for /R "%SOURCE_FOLDER%" %%G in (*.c) do (
    "clang-tidy" "%%G" -- -I "Include"
)

for /R "%INCLUDE_FOLDER%" %%G in (*.h) do (
    "clang-tidy" "%%G" -- -I "Include"
)