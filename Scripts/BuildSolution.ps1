param(
    [Parameter(Mandatory)]
    [string]$SolutionPath
)

dotnet build $SolutionPath -t:restore;rebuild