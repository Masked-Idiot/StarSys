@echo off
set file=%1
if not %file% == *.star (exit)
copy %file% C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter
cd C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter\
python main.py
cd C:\Users\liamc\
