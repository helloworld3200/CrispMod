param (
	[string]$SolutionDir
)

echo "In post-build, PS init stage"

# Set current directory to script location
cd "$SolutionDir\Scripts"

# Call scripts needed after build here

./UpdateDevDLL.ps1 -SolutionDir $SolutionDir

echo "Finished post-build, PS init stage"
