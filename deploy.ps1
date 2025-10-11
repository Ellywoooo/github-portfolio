Write-Host "Building portfolio..." -ForegroundColor Green
npm run build

Write-Host "Copying built files to root..." -ForegroundColor Green
Copy-Item "dist\index.html" "index.html" -Force
Copy-Item "dist\css\*" "css\" -Recurse -Force
Copy-Item "dist\js\*" "js\" -Recurse -Force
Copy-Item "dist\assets\*" "assets\" -Recurse -Force

Write-Host "Build and copy completed!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. git add ." -ForegroundColor Cyan
Write-Host "2. git commit -m 'Your commit message'" -ForegroundColor Cyan
Write-Host "3. git push origin main" -ForegroundColor Cyan
Write-Host ""
Read-Host "Press Enter to continue"

