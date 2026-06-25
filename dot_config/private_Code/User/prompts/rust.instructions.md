---
applyTo: '**/*.rs'
---
# Dependencies
- When adding dependencies run `cargo add <dependency>` instead of adding them manually to `Cargo.toml`. This ensures that the latest version is added and that the `Cargo.lock` file is updated.
- If you need to add a dependency only for tests, use `cargo add <dependency> --dev`.
- Don't run `cargo build` to check if the code compiles. `cargo check` is sufficient.