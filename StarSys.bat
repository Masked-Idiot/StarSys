@echo off
:start
echo Please type in the path to the StarSys file you would like to run
set /p file=
if %file% == exit() (exit)
copy %file% C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter
cd C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter\
python main.py
cd C:\Users\liamc\
goto start
