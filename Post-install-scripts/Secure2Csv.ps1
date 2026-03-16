# PowerShell PostProcess script for Secure2Csv of Category C:\DFIR\_Tools\Other

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\Other")) {
    New-Item -Path "C:\DFIR\_Tools\Other" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\Secure2Csv") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\Other\Secure2Csv" -ItemType SymbolicLink -Target "C:\DFIR\Secure2Csv" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\Secure2Csv"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Other\Secure2Csv.exe" -ItemType SymbolicLink -Target "C:\DFIR\Secure2Csv\Secure2Csv.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Other"

