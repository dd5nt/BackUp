chcp 1251 
set source1=G:\Share\BackUp\Cur\1C\*.*
set source2=G:\Share\BackUp\Cur\mail\*.*
set source3=G:\Share\Documents\*.*
set source4=G:\Share\BackUp\Act\*.*
set source5=G:\Сканы\*.*
set destination=G:\Share\BackUp\

if "%time:~0,1%"==" " (set HH=0%time:~1,1%) else (set HH=%time:~0,2%)
set director=%date:~6,4%.%date:~3,2%.%date:~0,2%_%HH:~-2,2%.%time:~3,2%

c:
cd C:\Program Files (x86)\WinRAR
echo = Rar 1C  %date% %time% >> G:\Share\BackUp\Log.txt
rar.exe a -m1 -r -ep1 -dh -dr -ilog"%destination%Error.txt" "%destination%%director%_1C.rdr" "%source1%"
echo   Rar  Mail %date% %time% >> G:\Share\BackUp\Log.txt
rar.exe a -m1 -r -ep1 -dh -dr -ilog"%destination%Error.txt" "%destination%%director%_Mail.rdr" "%source2%"
echo   Rar Doc %date% %time% >> G:\Share\BackUp\Log.txt
rar.exe a -m1 -r -ep1 -dh -ilog"%destination%Error.txt" "%destination%%director%_Doc.rdr" "%source3%"
echo   Rar Act %date% %time% >> G:\Share\BackUp\Log.txt
rar.exe a -m1 -r -ep1 -dh -ilog"%destination%Error.txt" "%destination%%director%_Act.rdr" "%source4%"
echo   Rar Scan %date% %time% >> G:\Share\BackUp\Log.txt
rar.exe a -m1 -r -ep1 -dh -ilog"%destination%Error.txt" "%destination%%director%_Scan.rdr" "%source5%"
echo   Del %date% %time% >> G:\Share\BackUp\Log.txt
dir "%destination%\*.rdr" /b /o:-d /t:c > "%destination%dir.txt"
for /f "skip=15 tokens=1" %%i in (%destination%dir.txt) do del /q "%destination%%%i" >> G:\Share\BackUp\Log.txt
echo = %date% %time% >> G:\Share\BackUp\Log.txt