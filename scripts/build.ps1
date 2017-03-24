$scriptsFolder = Get-Item $PSScriptRoot;
$projectRootFolder = $scriptsFolder.Parent;

$testCsproj = Join-Path $projectRootFolder.FullName "tests" | Join-Path -ChildPath "System.Ben.Tests.csproj";

"restoring packages"
dotnet restore

"running tests"
dotnet test "$testCsproj"

"building solution"
dotnet build -c Release