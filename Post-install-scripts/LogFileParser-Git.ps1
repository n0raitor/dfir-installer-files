# PowerShell PostProcess script for LogFileParser-Git of Category C:\DFIR\_Tools\NTFS

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\NTFS")) {
    New-Item -Path "C:\DFIR\_Tools\NTFS" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\LogFileParser-Git") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\NTFS\LogFileParser-Git" -ItemType SymbolicLink -Target "C:\DFIR\LogFileParser-Git" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\LogFileParser-Git"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\NTFS\LogFileParser-Git.exe" -ItemType SymbolicLink -Target "C:\DFIR\LogFileParser-Git\LogFileParser-Git.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\NTFS"

