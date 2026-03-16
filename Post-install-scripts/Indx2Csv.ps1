# PowerShell PostProcess script for Indx2Csv of Category C:\DFIR\_Tools\NTFS

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\NTFS")) {
    New-Item -Path "C:\DFIR\_Tools\NTFS" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\Indx2Csv") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\NTFS\Indx2Csv" -ItemType SymbolicLink -Target "C:\DFIR\Indx2Csv" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\Indx2Csv"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\NTFS\Indx2Csv.exe" -ItemType SymbolicLink -Target "C:\DFIR\Indx2Csv\Indx2Csv.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\NTFS"

