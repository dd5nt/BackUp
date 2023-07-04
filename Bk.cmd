set source1=G:\Share\1c
set source2=G:\Share\mail
set destination=G:\Share\BackUp\Cur\

echo = Copy 1C  %date% %time% >> G:\Share\BackUp\Log.txt
xcopy /E /R /K /Y "%source1%" "%destination%1c\"
echo   Copy Mail %date% %time% >> G:\Share\BackUp\Log.txt
move /Y "%source2%\autobackup.*" G:\Share\BackUp\Mail\
xcopy /E /R /K /Y "%source2%" "%destination%mail\"
echo = %date% %time% >> G:\Share\BackUp\Log.txt