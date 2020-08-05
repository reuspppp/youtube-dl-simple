# youtube-dl-simple
just a little .bat to simplify the use of youtube-dl
the features are really limited but its just to download videos without needing to write command lines.
if you want to use youtube-dl to its full capacity, use the doc at the youtube-dl github page.
I am a total beginer in Batch and this is just a small project so do not expect frequent updates, but the files should work with the last version of youtube-dl.

the features are :

download a video from all youtube-dl supported websites in 360p or 720p
if the url is a youtube playlist, give the choice to download the video or the playlist
place the playlist videos in a separate folder and numbers the videos

install : 

download "youtube-dl" and "ffmpeg" then place these files in the same folder as the "youtube-dl-simple" files

use : 
to use "youtube-dl simple.bat", you need to add youtube-dl to PATH and open "youtube-dl simple.bat" with a text editor and replace "C:/example/path" by the path of the destination folder.
the "place files in folder" one place the files in its folder.
open one of the .bat and follow the instructions in the console window

issues : 

if you have issues downloading videos, update youtube-dl (open a cmd window in the folder containing youtube-dl.exe, type "youtube-dl.exe -U" without the quotes and press enter)
