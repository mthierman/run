if (Test-Path "build")
{
    Remove-Item "build" -Force -Recurse
}
else
{
    Write-Error "Build directory not found"
}
