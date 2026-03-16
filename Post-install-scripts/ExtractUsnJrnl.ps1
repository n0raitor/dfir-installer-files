# PowerShell PostProcess script for ExtractUsnJrnl of Category C:\DFIR\_Tools\NTFS

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\NTFS")) {
    New-Item -Path "C:\DFIR\_Tools\NTFS" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\ExtractUsnJrnl") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\NTFS\ExtractUsnJrnl" -ItemType SymbolicLink -Target "C:\DFIR\ExtractUsnJrnl" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\ExtractUsnJrnl"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\NTFS\ExtractUsnJrnl.exe" -ItemType SymbolicLink -Target "C:\DFIR\ExtractUsnJrnl\ExtractUsnJrnl.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\NTFS"

