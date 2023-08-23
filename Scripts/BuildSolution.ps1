param(
    [Parameter(Mandatory)]
    [string]$SolutionPath
)

dotnet msbuild $SolutionPath -t:Rebuild -p:Configuration=Release