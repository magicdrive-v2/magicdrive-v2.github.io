@echo off
setlocal enabledelayedexpansion

REM 输入和输出目录
set inputDir=..\static\video\samples
set outputDir=..\static\video\covers

REM 创建输出目录（如果不存在）
if not exist "%outputDir%" (
    mkdir "%outputDir%"
)

REM 遍历输入目录下的所有 mp4 文件
for %%f in ("%inputDir%\*.mp4") do (
    set filename=%%~nf
    echo Processing %%f
    ffmpeg -y -i "%%f" -vf "select=eq(n\,0)" -q:v 3 -frames:v 1 "%outputDir%\!filename!.jpg"
)

echo Done!

REM 输入和输出目录
set inputDir=..\static\video\edit
set outputDir=..\static\video\covers

REM 创建输出目录（如果不存在）
if not exist "%outputDir%" (
    mkdir "%outputDir%"
)

REM 遍历输入目录下的所有 mp4 文件
for %%f in ("%inputDir%\*.mp4") do (
    set filename=%%~nf
    echo Processing %%f
    ffmpeg -y -i "%%f" -vf "select=eq(n\,0)" -q:v 3 -frames:v 1 "%outputDir%\!filename!.jpg"
)

echo Done!
pause
