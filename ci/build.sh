#!/bin/bash

echo Mop-up previous runs
rm -rf bg

echo Building the Blazegraph custom jar
find .

echo Unpack the Blazegraph jar
mkdir -p bg
unzip -q d2/blazegraph.jar -d bg

echo Copy configs
cp RWStore.properties bg/WEB-INF/classes/RWStore.properties

echo Build the jar
zip -q -r blazegraph.jar bg


