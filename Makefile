rust-version:
	@echo "Rust command-line utility versions:"
	rustc --version 			#rust compiler
	cargo --version 			#rust package manager
	rustfmt --version			#rust code formatter
	rustup --version			#rust toolchain manager
	clippy-driver --version		#rust linter

format:
	cargo fmt 

lint:
	cargo clippy 

test:
	cargo test 

run:
	cargo run

release:
	cargo build 

all: format lint test run