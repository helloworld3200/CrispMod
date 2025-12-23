param (
	[string]$SolutionDir,
	[string]$RelativeSourceLocation = "CrispMod\bin\Debug\CrispMod.dll",
	[string]$DropFolder = "CrispMod",
	[string]$DropFilename = "CrispMod.dll"
)

# Script to drop latest dev DLLs to Cities Skylines (dev) mod folder

Import-Module "$SolutionDir\Scripts\Common.psm1"

echo "Updating CS DLLs for dev stage"

$DropDir = "$env:LOCALAPPDATA\Colossal Order\Cities_Skylines\Addons\Mods\$DropFolder"
$DropPath = "$DropDir\$DropFilename"

$SourcePath = "$SolutionDir\$RelativeSourceLocation"

echo "Source path at: $SourcePath"
echo "Drop path at: $DropPath"

# Ensure directory exists before drop by creating folder if it doesnt already exist
Confirm-Directory -Path $DropDir

# Force flag to overwrite existing DLL
Copy-Item -Path "$SourcePath" -Destination "$DropPath" -Force

echo "Finished updating CS DLLs for dev stage"
