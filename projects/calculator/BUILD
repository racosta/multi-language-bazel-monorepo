load("@rules_python//python:py_library.bzl", "py_library")

py_library(
    name = "calculator",
    srcs = ["calculator.py"],
    deps = [],
)

py_test(
    name = "calculator_test",
    srcs = ["calculator_test.py"],
    deps = [
        ":calculator",
    ]
)
