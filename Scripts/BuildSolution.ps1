param(
    [Parameter(Mandatory)]
    [string]$SolutionPath
)

dotnet msbuild $SolutionPath -t:restore;rebuild