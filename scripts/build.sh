#!/bin/bash
#
# This script builds the application from source for multiple platforms.

# Get the parent directory of where this script is.

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
DIR="$( cd -P "$( dirname "$SOURCE" )/.." && pwd )"

# Change into that directory
cd "$DIR"

go get github.com/spf13/jwalterweatherman
go get github.com/spf13/cobra

GOARCH=${BUILDARCH} go build
