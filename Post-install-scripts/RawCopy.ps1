# PowerShell PostProcess script for RawCopy of Category C:\DFIR\_Tools\NTFS

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\NTFS")) {
    New-Item -Path "C:\DFIR\_Tools\NTFS" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\RawCopy") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\NTFS\RawCopy" -ItemType SymbolicLink -Target "C:\DFIR\RawCopy" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\RawCopy"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\NTFS\RawCopy.exe" -ItemType SymbolicLink -Target "C:\DFIR\RawCopy\RawCopy.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\NTFS"

