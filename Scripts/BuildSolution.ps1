param(
    [Parameter(Mandatory)]
    $SolutionPath,
    $Target = "Rebuild",
    $Configuration = "Release"
)

dotnet msbuild $SolutionPath -t:$Target -p:Configuration=$Configuration