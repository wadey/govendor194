#!/bin/sh

set -e -x

cd bravo
rm -rf vendor
govendor init
govendor fetch -v +outside
govendor list

if govendor list +vendor | grep -q "github.com/wadey/govendor194/bravo"
then
    echo "failed: local package is present in vendor/"
    exit 1
fi
