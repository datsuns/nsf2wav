set GME_VER=%1
set DESTDIR=gem

set URL="http://blargg.8bitalley.com/parodius/libs/Game_Music_Emu-%GME_VER%.zip"
set DEST=.\%DESTDIR%\gem.zip

rmdir /S /Q %DESTDIR%
mkdir %DESTDIR%
powershell -c wget %URL% -OutFile "%DEST%"
powershell -c Expand-Archive -Path %DEST%

