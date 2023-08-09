# Prompting the user for the log file path
$logFilePath = Read-Host "Please enter the path to the log file"

# Checking if the file exists
if (Test-Path $logFilePath) {
    Write-Host "Monitoring file: $logFilePath"
    Get-Content $logFilePath -Wait
} else {
    Write-Host "File not found at path: $logFilePath"
}