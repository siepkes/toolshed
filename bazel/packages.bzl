# Modified to use illumos system Python instead of a Bazel hermetic Python binary.

load("@rules_python//python:pip.bzl", "pip_parse")
load("//:versions.bzl", "VERSIONS")

def load_packages():
    # This is empty - it should be overridden in your repo
    pip_parse(
        name = "pip3",
        requirements_lock = "@envoy_toolshed//:requirements.txt",
    )

def load_website_packages():
    # Only call this if you wish to use the website functionality
    pip_parse(
        name = "website_pip3",
        requirements_lock = "@envoy_toolshed//website:requirements.txt",
    )
