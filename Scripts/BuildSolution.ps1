param(
    [Parameter(Mandatory)]
    [string]$SolutionPath,
    [string]$Configuration = "Release"
)

nuget restore $SolutionPath
dotnet msbuild $SolutionPath -t:Rebuild -p:Configuration=$Configuration