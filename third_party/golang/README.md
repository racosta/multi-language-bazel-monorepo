# Golang support

Bazel Go dependencies are based on the `go.work` file at the repo root. That will include
references to all Go modules in the repository.

```bash
bazel run @rules_go//go work use <project-path>
```

## Gazelle

Use `bazel run //:gazelle` to (re-)generate BUILD files.
