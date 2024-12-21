load("@gazelle//:def.bzl", "gazelle")

# gazelle:prefix github.com/racosta/multi-language-bazel-monorepo
gazelle(name = "gazelle")

load("@npm//:defs.bzl", "npm_link_all_packages")

npm_link_all_packages(name = "node_modules")
