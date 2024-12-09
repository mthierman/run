function Export-Commands
{
    [ordered]@{
        list  = {
            Get-ChildItem
        }
        clean = {
            if (Test-Path "build")
            {
                Remove-Item "build" -Force -Recurse
            }
            else
            {
                Write-Host "Build directory not found" -ForegroundColor "Red"
            }
        }
        run   = {
            cargo run
        }
        r     = {
            Get-ChildItem
        }
    }
}
