param(
    [Parameter(Mandatory)]
    [string]$SolutionPath
)

nuget.exe restore $SolutionPath
dotnet msbuild $SolutionPath t:Rebuild t:Configuration=Release