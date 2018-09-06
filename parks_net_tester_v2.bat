@echo off
title Park's Network Tester
color 0a
echo -------------------------------------------------
echo IP CONFIG SECTION OF TEST:
echo -------------------------------------------------
ipconfig/all |more
echo -------------------------------------------------
echo WIN-MAIN PING SECTION OF TEST:
echo -------------------------------------------------
pause
ping 192.168.1.111
echo -------------------------------------------------
echo DEFAULT GATEWAY PING SECTION OF TEST:
echo -------------------------------------------------
pause
ping 192.168.1.254
pause
echo -------------------------------------------------
echo OUTSIDE ACCESS PING (www.google.com) SECTION OF TEST:
echo -------------------------------------------------
ping www.google.com
pause
cls
echo -------------------------------------------------
echo WOULD YOU LIKE TO TEST OUTSIDE ACCESS?
echo (yes, no)
echo -------------------------------------------------
set /p input=""
cls
goto %input%
cls

:yes
echo -------------------------------------------------
echo YOU INPUT Y, THIS IS THE OUTSIDE ACCESS SECTION OF TEST.
echo -------------------------------------------------
pause
cls
echo -------------------------------------------------
echo DEFAULT GATEWAY PING SECTION OF TEST:
echo -------------------------------------------------
ping 192.168.1.254
pause
echo -------------------------------------------------
echo CCSD SITE PING SECTION OF TEST:
echo -------------------------------------------------
ping www.ccsdschools.com
pause
echo -------------------------------------------------
echo NON-CCSD SITE PING SECTION OF TEST:
echo -------------------------------------------------
ping www.pcpartpicker.com
pause
goto yoink

:no
echo -------------------------------------------------
echo YOU INPUT NO, PRESS ANY KEY TO CLOSE WINDOW.
echo -------------------------------------------------
pause
stop

:yoink
