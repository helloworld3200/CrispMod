# Common powershell functions for use in our scripts to be stored here.

# Makes sure a directory exists, creates it if it doesn't
function Confirm-Directory {
    param (
        [Parameter(Mandatory = $true)]
        [string]$Path,

        [bool]$EchoIfCreated = $true
    )

    if (-not (Test-Path -Path $Path -PathType Container)) {
        New-Item -Path $Path -ItemType Directory -Force | Out-Null

        if ($EchoIfCreated) {
            echo "Created directory: $Path"
        }
    }
}

Export-ModuleMember -Function Confirm-Directory
