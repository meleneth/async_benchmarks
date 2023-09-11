FROM rustlang/rust:nightly-bookworm
WORKDIR /usr/src/myapp
COPY . .
RUN cargo install --path .
CMD ["rusted-rocket"]
