@echo off
cd /d "%~dp0"
set CLASSPATH=..\jars\SFE.jar;..\jars\log4j-1.2beta3.jar
java -classpath %CLASSPATH% -Drundir=.\ SFE.BOAL.Bob %*
