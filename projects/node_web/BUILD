load("@aspect_rules_js//js:defs.bzl", "js_binary")

js_binary(
  name = "node_web",
  data = [
    "//:node_modules/express",
    "//projects/node_calculator",
  ],
  entry_point = ":index.js",
)