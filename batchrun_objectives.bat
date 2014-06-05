:: recursive script that calls (multiple) mas2g files
:: script then calls itself so the whole procedure gets repeated until you stop it.
@echo on

::set environment (different per PC)
cd C:\Users\Chris Rozemuller\GOAL
set PATH=swifiles/libs;c:\Program Files\java\jre7\bin;c:\Program Files\java\jre6\bin;%PATH%
set SWI_HOME_DIR=swifiles

:: call mas2g files
java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0Blockbuster_v2.mas2g" --repeats 100 --timeout 150

::recursive self calling
start cmd /c "%~dp0batchrun_objectives.bat"
exit
