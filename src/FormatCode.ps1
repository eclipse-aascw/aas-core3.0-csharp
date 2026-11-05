# SPDX-FileCopyrightText: 2023 aas-core3.0-csharp AUTHORS
#
# SPDX-License-Identifier: MIT

<#
.SYNOPSIS
This script formats the code in-place.
#>

$ErrorActionPreference = "Stop"

function Main
{
    Set-Location $PSScriptRoot
    dotnet format --exclude "**/DocTest*.cs"
}

$previousLocation = Get-Location; try
{
    Main
}
finally
{
    Set-Location $previousLocation
}
