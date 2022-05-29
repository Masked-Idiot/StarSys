@echo off
cd C:\Users\liamc\Documents\Python_Projects\StarSys\Interpreter\
pyinstaller --onefile app.py
del app.spec
del build
dist\app.exe
cd C:\Users\liamc\
