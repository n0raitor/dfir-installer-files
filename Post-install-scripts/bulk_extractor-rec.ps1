# PowerShell PostProcess script for bulk_extractor-rec of Category C:\DFIR\_Tools\Volatile

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\Volatile")) {
    New-Item -Path "C:\DFIR\_Tools\Volatile" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\bulk_extractor-rec") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\Volatile\bulk_extractor-rec" -ItemType SymbolicLink -Target "C:\DFIR\bulk_extractor-rec" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\bulk_extractor-rec"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Volatile\bulk_extractor-rec.exe" -ItemType SymbolicLink -Target "C:\DFIR\bulk_extractor-rec\bulk_extractor-rec.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Volatile"

