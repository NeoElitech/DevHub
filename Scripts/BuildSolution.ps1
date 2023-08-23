param(
    [Parameter(Mandatory)]
    [string]$SolutionPath
)

nuget restore $SolutionPath
dotnet msbuild $SolutionPath -t:Rebuild -p:Configuration=Release