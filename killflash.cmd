set FolderPrefix=C:\Windows\WinSxS

for /f %%a in ('dir /b %FolderPrefix%\wow64_adobe-flash-for-windows*') do takeown /F %FolderPrefix%\%%a /R
for /f %%a in ('dir /b %FolderPrefix%\wow64_adobe-flash-for-windows*') do icacls %FolderPrefix%\%%a /grant Everyone:F
for /f %%a in ('dir /b %FolderPrefix%\wow64_adobe-flash-for-windows*') do rd /s /q %FolderPrefix%\%%a
