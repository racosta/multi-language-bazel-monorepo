# Node.js support

Bazel Node.js dependencies are based on the `package.json` file at the repo root.

## Add dependencies

From repo root:

```bash
bazel run -- @pnpm//:pnpm add --dir $PWD <package>
```

## Update `pnpm-lock.yaml`

From repo root:

```bash
bazel run -- @pnpm//:pnpm install --dir $PWD
```
