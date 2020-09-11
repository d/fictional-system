#!/bin/bash

set -e -u -o pipefail

it_has_executables() {
	type -p bear
	type -p ccache
	type -p cmake
	type -p git
	type -p jq
	type -p ninja
	type -p parallel
	type -p xargs

	type -p clang++-10
	type -p clang-format-10
	type -p clang-tidy-10
}
_main() {
	it_has_executables
}

_main "$@"
