:: this script starts the BW4T server and then starts batchrun_objectives.
@echo on

:: Start server
start cmd /c "%~dp0BW4T2\BW4TServer\BW4TServer10.bat"

:: Wait for the server to start
TIMEOUT 5

:: Start batchfile with mas2g calls.
start cmd /c "%~dp0batchrun_objectives.bat"
exit
