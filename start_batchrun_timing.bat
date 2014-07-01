:: this script starts the BW4T server and then starts batchrun_objectives.
@echo on

cd C:\Users\Chris Rozemuller\GOAL
:: make sure directories exist

md logs\10\
md logs\15\
md logs\20\
md logs\50\

:: kill previous processes
TASKKILL /im java.exe
TIMEOUT 1
:: Start server with 10 ms delay
start cmd /c "%~dp0BW4T2\BW4TServer\BW4TServer10.bat"
:: Wait for the server to start
TIMEOUT 2
:: Start batchfile with mas2g calls.
start /WAIT cmd /c "%~dp0batchrun_objectives.bat"
:: move files to 10 folder
move logs\*.* logs\10\



:: kill previous processes
TASKKILL /im java.exe
TIMEOUT 1
:: Start server with 15 ms delay
start cmd /c  "%~dp0BW4T2\BW4TServer\BW4TServer15.bat"
:: Wait for the server to start
TIMEOUT 2
:: Start batchfile with mas2g calls.
start /WAIT cmd /c "%~dp0batchrun_objectives.bat"
:: move files to 15 folder
move logs\*.* logs\15\



:: kill previous processes
TASKKILL /im java.exe
TIMEOUT 1
:: Start server with 20 ms delay
start cmd /c "%~dp0BW4T2\BW4TServer\BW4TServer20.bat"
:: Wait for the server to start
TIMEOUT 2
:: Start batchfile with mas2g calls.
start /WAIT cmd /c "%~dp0batchrun_objectives.bat"
:: move files to 20 folder
move logs\*.* logs\20\

:: kill previous processes
TASKKILL /im java.exe
TIMEOUT 1
:: Start server with 50 ms delay
start cmd /c "%~dp0BW4T2\BW4TServer\BW4TServer50.bat"
:: Wait for the server to start
TIMEOUT 2
:: Start batchfile with mas2g calls.
start /WAIT cmd /c "%~dp0batchrun_objectives.bat"
:: move files to 50 folder
move logs\*.* logs\50\

:: start from beginning
start cmd /c "%~dp0start_batchrun_timing.bat"
exit
