@echo off
set file=%1
transtar %file%
set dir=%2
cd C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter\
pyinstaller --onefile app.py
del app.spec
copy dist\app.exe %dir%
cd C:\Users\liamc\
