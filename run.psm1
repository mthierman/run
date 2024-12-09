function Export-Commands
{
    [ordered]@{
        list          = {
            Get-ChildItem
        }
        clean         = {
            if (Test-Path "build")
            {
                Remove-Item "build" -Force -Recurse
            }
            else
            {
                Write-Host "Build directory not found" -ForegroundColor "Red"
            }
        }
        debug_build   = {
            cargo build
        }
        debug_run     = {
            cargo run
        }
        release_build = {
            cargo build --release
        }
        release_run   = {
            cargo run --release
        }
    }
}
