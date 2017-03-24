#!/usr/bin/env bash
set -e

scriptsFolder="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
projectRootFolder="$(dirname "$scriptsFolder")"
cd $projectRootFolder

#restoring packages 
dotnet restore

#running tests
dotnet test $projectRootFolder/tests/System.Ben.Tests.csproj

#building solutions
dotnet build -c Release

