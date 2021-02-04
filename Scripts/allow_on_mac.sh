#! /bin/bash

cd $( dirname $BASH_SOURCE )
xattr -d com.apple.quarantine *.dylib dafny DafnyServer *.dll z3/bin/z3
