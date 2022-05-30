@echo off
set file=%1
copy %file% C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter
cd C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter\
python transpile.py
cd C:\Users\liamc\