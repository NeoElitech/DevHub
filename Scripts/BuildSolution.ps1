param(
    [Parameter(Mandatory)]
    [String]
    $SolutionPath,

    [Parameter]
    [String]
    $Target = "Rebuild",

    [Parameter]
    [String]
    $Configuration = "Release"

    
)

dotnet msbuild $SolutionPath -t:$Target -p:Configuration=$Configuration