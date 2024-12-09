// use std::path::Path;
use std::process::Command;

fn main() {
    let output = String::from_utf8(
        Command::new("pwsh")
            .args(["-nop", "-nol", "-noni", "-C", "(Get-Location).path"])
            .output()
            .unwrap()
            .stdout,
    )
    .unwrap();

    println!("{}", output.trim());
}
