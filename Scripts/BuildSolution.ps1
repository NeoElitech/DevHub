param(
    [Parameter(Mandatory)]
    $SolutionPath,
    [string]$Target = "Rebuild",
    [string]$Configuration = "Release"
)

dotnet msbuild $SolutionPath -t:$Target -p:Configuration=$Configuration