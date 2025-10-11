@echo off
echo Building portfolio...
npm run build

echo Copying built files to root...
copy dist\index.html index.html
xcopy dist\css css\ /E /I /Y
xcopy dist\js js\ /E /I /Y
xcopy dist\assets assets\ /E /I /Y

echo Build and copy completed!
echo.
echo Next steps:
echo 1. git add .
echo 2. git commit -m "Your commit message"
echo 3. git push origin main
echo.
pause

