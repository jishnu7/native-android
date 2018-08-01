#!/bin/sh
pwd -L
cd ../../../../../barista
npm install
cd ../gradleops/AndroidSeed/tealeaf/src/main/
../../../../../barista/bin/barista -e v8 -o jni/gen/ jni/core/templates/*.json



