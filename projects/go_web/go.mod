module github.com/racosta/multi-language-bazel-monorepo/projects/go_web

go 1.23.3

replace github.com/racosta/multi-language-bazel-monorepo/projects/go_hello_world => ../go_hello_world

require (
	github.com/gorilla/mux v1.8.1
	github.com/racosta/multi-language-bazel-monorepo/projects/go_hello_world v0.0.0-00010101000000-000000000000
)
