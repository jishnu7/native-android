#!/bin/sh

cd barista
npm install
cd ..
barista/bin/barista -e v8 -o 'gradleops/AndroidSeed/tealeaf/src/main/jni/gen/' 'gradleops/AndroidSeed/tealeaf/src/main/jni/core/templates/*.json'



