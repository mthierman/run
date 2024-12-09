function Export-Tasks
{
    [ordered]@{
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
        clean         = {
            cargo clean
        }
    }
}
