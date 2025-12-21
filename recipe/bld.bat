:: Temporary fix for missing libgfortran.dll.a - remove when r-base is fixed
sed -i 's/FLIBS = .*$/FLIBS = /'

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
