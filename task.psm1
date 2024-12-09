function Export-Task
{
    [ordered]@{
        build_debug   = {
            cargo build
        }
        run_debug     = {
            cargo run
        }
        build_release = {
            cargo build --release
        }
        run_release   = {
            cargo run --release
        }
        clean         = {
            cargo clean
        }
    }
}
