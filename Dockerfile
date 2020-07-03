#FROM rust:1.43.1 as rust
FROM shtripok/rust-musl-builder:arm

WORKDIR /app
COPY * ./
COPY src/ ./src/

RUN pwd
run ls -la

RUN cargo build
