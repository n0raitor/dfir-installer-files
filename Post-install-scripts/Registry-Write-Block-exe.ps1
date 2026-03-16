# PowerShell PostProcess script for Registry-Write-Block-exe of Category C:\DFIR\_Tools\Writeblock

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\Writeblock")) {
    New-Item -Path "C:\DFIR\_Tools\Writeblock" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\Registry-Write-Block-exe") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\Writeblock\Registry-Write-Block-exe" -ItemType SymbolicLink -Target "C:\DFIR\Registry-Write-Block-exe" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\Registry-Write-Block-exe"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Writeblock\Registry-Write-Block-exe.exe" -ItemType SymbolicLink -Target "C:\DFIR\Registry-Write-Block-exe\Registry-Write-Block-exe.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Writeblock"

