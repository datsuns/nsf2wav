set GME_VER=0.5.2
set DESTDIR=gem

set URL="http://blargg.parodius.com/libs/Game_Music_Emu-%GME_VER%.zip"
set DEST=.\%DESTDIR%\gem.zip

rmdir /S /Q %DESTDIR%
mkdir %DESTDIR%
powershell -c wget %URL% -OutFile "%DEST%"
powershell -c Expand-Archive -Path %DEST%

