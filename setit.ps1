# Set Chrome as default web browser
$chromePath = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$chromeRegKey = "HKCU:\Software\Microsoft\Windows\Shell\Associations\UrlAssociations\http\UserChoice"
Set-ItemProperty -Path $chromeRegKey -Name "Progid" -Value "ChromeHTML"

# Set Notepad++ as default text editor
$nppPath = "C:\Program Files\Notepad++\notepad++.exe"
$nppRegKey = "HKCU:\Software\Microsoft\Windows\CurrentVersion\App Paths\notepad++.exe"
Set-ItemProperty -Path $nppRegKey -Name "(Default)" -Value $nppPath

# Optional: Notify user about changes
Write-Host "Chrome set as default web browser."
Write-Host "Notepad++ set as default text editor."
