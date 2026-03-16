# PowerShell PostProcess script for Upx of Category C:\DFIR\_Tools\SRE

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\Malware Analysis")) {
    New-Item -Path "C:\DFIR\_Tools\Malware Analysis" -ItemType Directory
}

# Check if the tool directory exists
$sourceLnk = "C:\ProgramData\chocolatey\bin\upx.exe"
$destinationLnk = "C:\DFIR\_Tools\Malware Analysis\upx.exe"

if (Test-Path -Path $sourceLnk) {
    # Copy the  file if it exists
    New-Item -ItemType SymbolicLink -Force -Path $destinationLnk -Target $sourceLnk
} else {
    Write-Host "EXE not found: $sourceLnk" -ForegroundColor Red
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\SRE\Upx" -ItemType SymbolicLink -Target "C:\DFIR\Upx\Upx.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\SRE"

