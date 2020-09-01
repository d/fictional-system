#!/bin/bash

set -e -u -o pipefail

_main() {
	type -p clang-format-10
	type -p xargs
	type -p git
	type -p parallel
}

_main "$@"
