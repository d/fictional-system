#!/bin/bash

set -e -u -o pipefail

_main() {
	type -p bear
	type -p clang-format-10
	type -p clang++-10
	type -p clang-tidy-10
	type -p cmake
	type -p ninja
	type -p xargs
	type -p git
	type -p parallel
}

_main "$@"
