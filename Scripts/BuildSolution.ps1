param(
    [Parameter(Mandatory)]
    [string]$SolutionPath
)

dotnet build $SolutionPath