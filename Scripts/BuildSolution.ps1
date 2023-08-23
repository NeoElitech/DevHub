param(
    [Parameter(Mandatory)]
    [string]$SolutionPath,

    [Parameter]
    [string]$Target = "Rebuild",
    
    [Parameter]
    [string]$Configuration = "Release"
)

dotnet msbuild $SolutionPath -t:$Target -p:Configuration=$Configuration