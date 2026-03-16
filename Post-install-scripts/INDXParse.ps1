# PowerShell PostProcess script for INDXParse of Category C:\DFIR\_Tools\Artifact Tools

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\NTFS")) {
    New-Item -Path "C:\DFIR\_Tools\NTFS" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\INDXParse") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\NTFS\INDXParse" -ItemType SymbolicLink -Target "C:\DFIR\INDXParse" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\INDXParse"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Artifact Tools\INDXParse.exe" -ItemType SymbolicLink -Target "C:\DFIR\INDXParse\INDXParse.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Artifact Tools"

