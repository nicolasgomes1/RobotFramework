rem Set the timestamp variable
@echo off
setlocal enabledelayedexpansion

rem Set the timestamp variable
set timestamp=%date:~10,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%

rem Set the project path that must be changed based on the situation
set userpath=C:\Users\nicolas.gomes\PycharmProjects\pythonProject

rem Set the path to the log directory
set log_dir=%userpath%\Logs\%1_%timestamp%

rem Set the test suite and the tags to be used in the test run
set test_suite=%userpath%\TestCases\%1\%2.robot
set tags=%3

rem Create the log directory
mkdir %log_dir%

if "%3" == "" (
rem Run the test suite and generate the output files without tags
robot --outputdir %log_dir% ^
--log %log_dir%\log_%timestamp%.html ^
--report %log_dir%\report_%timestamp%.html ^
--output %log_dir%\output_%timestamp%.xml "%test_suite%"
) else (
rem Run the test suite and generate the output files with tags
robot --outputdir %log_dir% ^
--log %log_dir%\log_%timestamp%.html ^
--report %log_dir%\report_%timestamp%.html ^
--output %log_dir%\output_%timestamp%.xml -i %tags% "%test_suite%"
)

