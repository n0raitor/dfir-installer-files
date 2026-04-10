# PowerShell PostProcess script for SnippingTool of Category C:\DFIR\_Tools\System Utilities

# Check if the category path exists, if not, create it
if (!(Test-Path -Path "C:\DFIR\_Tools\System Utilities")) {
    New-Item -Path "C:\DFIR\_Tools\System Utilities" -ItemType Directory
}

# Check if the tool directory exists
if (Test-Path -Path "C:\DFIR\SnippingTool") {
    # Create symlink if tool directory exists
    New-Item -Path "C:\DFIR\_Tools\System Utilities\SnippingTool" -ItemType SymbolicLink -Target "C:\DFIR\SnippingTool" -Force
} else {
    Write-Host "Tool directory does not exist: C:\DFIR\SnippingTool"
}

# Create symlink
#New-Item -Path "C:\DFIR\_Tools\System Utilities\SnippingTool.exe" -ItemType SymbolicLink -Target "C:\DFIR\SnippingTool\SnippingTool.exe" -Force

# File moving command will be inserted here
# Move-Item -Path C:\DFIR\ -Destination "C:\DFIR\Tools\System Utilities"

