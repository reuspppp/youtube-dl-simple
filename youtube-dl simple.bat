@echo off
setlocal enableextensions enabledelayedexpansion
:start
set /p url=url : 
set /p qual="quality (360/720 = 1/0) : "
if !qual!==0 (
    set qual="22/bestvideo[height<=?720]+bestaudio/best[height<=?720]"
) else (
    set qual="18/bestvideo[height<=?360]+bestaudio/best[height<=?360]"
)
cd C:\example\path
if not "!url:list==!"=="!url!" (
    set /p v="video or playlist ? (V/P) : "
    if !v!==P (
        youtube-dl.exe -io "%%(playlist)s/%%(playlist_index)03d - %%(title)s.%%(ext)s" -f !qual! --yes-playlist --no-mtime "!url!"
    ) else (
        youtube-dl.exe -f !qual! --no-playlist --no-mtime "!url!"
    )
) else (
    youtube-dl.exe -f !qual! --no-playlist --no-mtime "!url!"
)
set /p re="download again ? (Y/N) "
echo.
echo.
if !re!==Y goto start
endlocal
