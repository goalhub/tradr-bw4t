:: recursive script that calls (multiple) mas2g files
:: script then calls itself so the whole procedure gets repeated until you stop it.
@echo on

::set environment (different per PC)
cd C:\Users\Chris Rozemuller\GOAL
::set PATH=swifiles/libs;c:\Program Files\java\jre7\bin;c:\Program Files\java\jre6\bin;%PATH%
set PATH=swifiles/libs;c:\Program Files\java\jre7\bin
set SWI_HOME_DIR=swifiles

:: call mas2g files
java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0Blockbuster_v2.mas2g" --repeats 1000 --timeout 50

::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_10.mas2g" --repeats 2 --timeout 60
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_1.mas2g" --repeats 2 --timeout 120
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_3.mas2g" --repeats 2 --timeout 60
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_5.mas2g" --repeats 2 --timeout 60
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_7.mas2g" --repeats 2 --timeout 60
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_9.mas2g" --repeats 2 --timeout 60

::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_10b.mas2g" --repeats 2 --timeout 60
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_1b.mas2g" --repeats 2 --timeout 120
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_3b.mas2g" --repeats 2 --timeout 60
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_5b.mas2g" --repeats 2 --timeout 60
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_7b.mas2g" --repeats 2 --timeout 60
::java -cp goal.jar -Djava.library.path=swifiles/libs goal.tools.Run "%~dp0batch\Blockbuster_v2_9b.mas2g" --repeats 2 --timeout 60



::recursive self calling
start cmd /c "%~dp0batchrun_objectives.bat"
::pause
exit
