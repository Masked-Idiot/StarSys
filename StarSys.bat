@echo off
copy main.star C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter
if exist *.png (copy *.png C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter)
cd Interpreter\
python main.py