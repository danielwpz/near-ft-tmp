RFLAGS="-C link-arg=-s"

all:
	rustup target add wasm32-unknown-unknown
	RUSTFLAGS=$(RFLAGS) cargo build --target wasm32-unknown-unknown --release
	mkdir -p res
	cp target/wasm32-unknown-unknown/release/near_ft.wasm ./res/
