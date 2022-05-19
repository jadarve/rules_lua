# rules_lua

Bazel rules for using the [Lua language](https://www.lua.org/).

## Configuration

Include the following configuration in your project's `WORKSPACE` file.

```python
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "rules_lua",
    remote = "https://github.com/jadarve/rules_lua.git",
    tag = "v0.0.1"
)

load("@rules_lua//toolchains:repositories.bzl", "lua_repositories")
lua_repositories()
```

## Available targets

### Lua interpreter

It's possible to run the Lua interpreter directly:

```bash
bazel run @rules_lua//toolchains:lua 
```

### Lua compiler

The compiler is avaialble as:

```bash
bazel run @rules_lua//toolchains:luac -- <compile options> 
```

### Lua C library

Additionally, the C library is available as a dependency as `@rules_lua//cc:lua_cc_library` 

## Examples

See the [examples](examples) folder to see how to use the rules.
