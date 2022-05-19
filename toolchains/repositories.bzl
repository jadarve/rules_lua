"""
"""

load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")


def lua_repositories():
    
    maybe (
        repo_rule = http_archive,
        name = "remote_lua53_repository",
        urls = [
            "https://www.lua.org/ftp/lua-5.3.6.tar.gz"
        ],
        sha256 = "fc5fd69bb8736323f026672b1b7235da613d7177e72558893a0bdcd320466d60",
        strip_prefix = "lua-5.3.6",
        build_file = "@rules_lua//toolchains:lua.BUILD",
    )
    
    maybe (
        repo_rule = http_archive,
        name = "remote_lua54_repository",
        urls = [
            "https://www.lua.org/ftp/lua-5.4.4.tar.gz"
        ],
        sha256 = "164c7849653b80ae67bec4b7473b884bf5cc8d2dca05653475ec2ed27b9ebf61",
        strip_prefix = "lua-5.4.4",
        build_file = "@rules_lua//toolchains:lua.BUILD",
    )
