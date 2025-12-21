:: Temporary fix for missing libgfortran.dll.a - remove when r-base is fixed
dir %PREFIX%\lib\R\etc
sed -i 's/FLIBS = .*$/FLIBS = /' %PREFIX%\lib\R\etc\Makeconf
IF %ERRORLEVEL% NEQ 0 exit /B 1

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
