load("@rules_python//python:py_library.bzl", "py_library")

py_library(
    name = "calculator",
    srcs = ["calculator.py"],
    deps = [],
    visibility = ["//visibility:public"],
)

py_test(
    name = "calculator_test",
    srcs = ["calculator_test.py"],
    deps = [
        ":calculator",
    ]
)
