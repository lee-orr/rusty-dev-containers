# Rusty Dev Containers
A collection of dev container fetaures designed for working with rust in various contexts.

## Usage
To use a feature from this repository, add it to a devcontainer.json. You can read more about devcontainer features here: https://containers.dev/features

## Available Features
| Feature | OCI Image | Description |
| - | - | - |
| | **Rust Tools** | |
| Cargo Binstall | ghcr.io/lee-orr/rusty-dev-containers/cargo-binstall:0 | Installs [Cargo Binstall](https://github.com/cargo-bins/cargo-binstall) - an alternative to cargo install that will download binaries if they exist, and only build from source if binaries aren't found |
| Cargo Expand | ghcr.io/lee-orr/rusty-dev-containers/cargo-expand:0 | Installs [Cargo Expand](https://github.com/dtolnay/cargo-expand) - a command that prints out the expanded version of a macro, useful when developing macros |
| Cargo Watch | ghcr.io/lee-orr/rusty-dev-containers/cargo-watch:0 | Installs [Cargo Watch](ghcr.io/lee-orr/rusty-dev-containers/cargo-watch:0) - a command that allows rust to watch for file changes and re-build, re-run tests, or even run arbitrary scripts |
| Wasm32-Unknown-Unknown | ghcr.io/lee-orr/rusty-dev-containers/wasm32-unknown-unknown:0 | There already exists a feature for wasm-wasi, but none for wasm32-unknown-unknown, which is useful for building wasm for the browser |
| Wasm Bindgen CLI | ghcr.io/lee-orr/rusty-dev-containers/wasm-bindgen-cli:0 | Installs the [Wasm Bindgen CLI](https://rustwasm.github.io/wasm-bindgen/reference/cli.html) - a command line tool for generating javascript and typescript bindings for Rust WASM |
| Cargo Bundle | ghcr.io/lee-orr/rusty-dev-containers/cargo-bundle:0 | Installs [Cargo Bundle](https://github.com/burtonageo/cargo-bundle) - a tool for wrapping rust executables in OS specific bundles/installers (.deb on linux, .app on Mac/iOS, .msi on Windows) |
| Cargo Mobile |  ghcr.io/lee-orr/rusty-dev-containers/cargo-mobile:0 | Installs [Cargo Mobile](https://github.com/BrainiumLLC/cargo-mobile) - a tool for building & running rust apps on mobile |
| Cargo Make |  ghcr.io/lee-orr/rusty-dev-containers/cargo-make:0 | Installs [Cargo Make](https://sagiegurari.github.io/cargo-make/) - a task runner built in rust |
| Cargo Audit |  ghcr.io/lee-orr/rusty-dev-containers/cargo-audit:0 | Installs [Cargo Audit](https://rustsec.org/) - a tool for auditing cargo files for security vaulnerabilities |
| Cargo Deny |  ghcr.io/lee-orr/rusty-dev-containers/cargo-deny:0 | Installs [Cargo Deny](https://rustsec.org/) - a tool for limit usage of particular dependencies |
| Cargo Nexttest |  ghcr.io/lee-orr/rusty-dev-containers/cargo-nextest:0 | Installs [Cargo Nextest](https://nexte.st/) - a powerful test runner for rust |

| | **Terminal Tools** | |
| Bacon | ghcr.io/lee-orr/rusty-dev-containers/bacon:0 | Intalls [Bacon](https://github.com/Canop/bacon) - a terminal based rust code checker that can watch & run check, flippy, fmt, and tests in the background |
| Mprocs | ghcr.io/lee-orr/rusty-dev-containers/mprocs:0 | Installs [mprocs](https://github.com/pvolok/mprocs) - a command line tool for running multiple commands in parallel. |
| Zellij | ghcr.io/lee-orr/rusty-dev-containers/zellij:0 | Installs [Zellij](https://zellij.dev/) - a terminal workspace with batteries included. |
Helix | ghcr.io/lee-orr/rusty-dev-containers/helix:0 | Installs the [Helix](https://helix-editor.com/) text editor - a modal text editor written in rust |
| | **WASM Server Frameworks**| |
| Fermyon Spin | ghcr.io/lee-orr/rusty-dev-containers/fermyon-spin:0 | Installs the [Spin CLI](https://developer.fermyon.com/spin/index), allowing building, testing and deploying for Spin-based WASM applications |
| Wasmcloud | ghcr.io/lee-orr/rusty-dev-containers/wasmcloud:0 | Installs Wash - the CLI for [Wasmcloud](https://wasmcloud.com/docs/intro) - a platform for building wasm-based cloud environments. |
| Cosmonic | ghcr.io/lee-orr/rusty-dev-containers/cosmonic:0 | Installs Cosmo - the CLI for [Cosmonic](cosmonic.com/) - a PaaS based on Wasmcloud. Note that it contains all the features provided by Wash, but with the capacity to automatically login to your cosmonic account & connect your dev environment to your constellation on their servers. |