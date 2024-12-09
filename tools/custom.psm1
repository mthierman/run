function list
{
    Get-ChildItem
}

function clean
{
    if (Test-Path "build")
    {
        Remove-Item "build" -Force -Recurse
    }
    else
    {
        Write-Host "Build directory not found" -ForegroundColor "Red"
    }
}

function run
{
    cargo run
}
