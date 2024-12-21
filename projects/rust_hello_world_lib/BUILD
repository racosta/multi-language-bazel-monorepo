load("@rules_rust//rust:defs.bzl", "rust_library", "rust_test")

rust_library(
    name = "hello_lib",
    srcs = [
      "src/greeter.rs",
      "src/lib.rs",
    ],
    deps = [
      "@crates//:anyhow",
    ],
    visibility = ["//projects/rust_hello_world:__pkg__"],
)

rust_test(
    name = "rust_hello_world_test",
    crate = ":hello_lib",
    deps = [
      "@crates//:anyhow"
    ],
)
