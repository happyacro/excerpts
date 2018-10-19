@echo off
REM prompt $e[1;32;40m$p$g$e[1;32;40m

PATH A:\BIN\

attrib +h SECRET

REM goto :end

cls
xecho "\n\n\n\n\n"
xecho -n "A:\&gt;"
bsleep 2000
xecho -n "H"
xecho -n "A"
xecho -n "P"
xecho -n "P"
xecho -n "Y"
xecho -n ":"
xecho -n "\\"
xecho -n "A"
xecho -n "C"
xecho -n "R"
xecho -n "O\n"
bsleep 1000
xecho "Bad command or filename - &quot;HAPPY:\\ACRO&quot;"
bsleep 2000

cls
MORE SECRET\BLAH.TXT
echo.
echo.

:end