# PowerShell PostProcess script for JoakimSchichtToolsOutdated of Category C:\DFIR\_Tools\NTFS

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\NTFS")) {
    New-Item -Path "C:\DFIR\_Tools\NTFS" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\JoakimSchichtToolsOutdated") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\NTFS\JoakimSchichtToolsOutdated" -ItemType SymbolicLink -Target "C:\DFIR\JoakimSchichtToolsOutdated" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\JoakimSchichtToolsOutdated"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\NTFS\JoakimSchichtToolsOutdated.exe" -ItemType SymbolicLink -Target "C:\DFIR\JoakimSchichtToolsOutdated\JoakimSchichtToolsOutdated.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\NTFS"

