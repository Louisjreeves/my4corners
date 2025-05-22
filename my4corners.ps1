[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Get Downloads folder path
$DownloadsPath = (New-Object -ComObject Shell.Application).NameSpace('shell:Downloads').Self.Path
Set-Location -Path $DownloadsPath

# Define file and paths
$zipName = "my4corners.zip"
$folderName = "my4corners"
#$downloadUrl = "https://github.com/Louisjreeves/WacAzLocalhelp/edit/main/$zipName"
$downloadUrl = "https://raw.githubusercontent.com/Louisjreeves/my4corners/main/my4corners.zip"
$zipPath = Join-Path $DownloadsPath $zipName
$extractPath = Join-Path $DownloadsPath $folderName

# Download ZIP
try {
    Invoke-WebRequest -Uri $downloadUrl -OutFile $zipPath -UseBasicParsing -ErrorAction SilentlyContinue
} catch {
    Write-Error "Download failed: $($_.Exception.Message)"
    exit 1
}

# Extract it
try {
    Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force
} catch {
    Write-Error "Failed to unzip $zipName"
    exit 1
}

 $scriptFileName = "my4corners.ps1"
$scriptPath = Join-Path $extractPath $scriptFileName

if (Test-Path $scriptPath) {
    Set-Location -Path $extractPath
    & $scriptPath
} else {
    Write-Error "Script not found: $scriptPath"
    exit 1
}