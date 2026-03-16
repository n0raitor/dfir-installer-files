# PowerShell PostProcess script for kernel-vhd-vhdx-viewer of Category C:\DFIR\_Tools\Other

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\Other")) {
    New-Item -Path "C:\DFIR\_Tools\Other" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\kernel-vhd-vhdx-viewer") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\Other\kernel-vhd-vhdx-viewer" -ItemType SymbolicLink -Target "C:\DFIR\kernel-vhd-vhdx-viewer" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\kernel-vhd-vhdx-viewer"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\Other\kernel-vhd-vhdx-viewer.exe" -ItemType SymbolicLink -Target "C:\DFIR\kernel-vhd-vhdx-viewer\kernel-vhd-vhdx-viewer.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\Other"

