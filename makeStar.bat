@echo off
cd C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter\
pyinstaller --onefile app.py
del app.spec
set /p dir=Please type in the path to the folder you would like to put the executable in
copy dist\app.exe %dir%
cd C:\Users\liamc\
