@echo off
set file=%1
set dir=%2
copy %file% C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter\
python Interpreter\transpile.py
cd C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter\
pyinstaller --onefile app.py
del app.spec
copy dist\app.exe %dir%
cd C:\Users\liamc\