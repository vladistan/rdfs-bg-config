#!/bin/bash

echo Mop-up previous runs
rm -rf bg
rm -rf blazegraph.jar

echo Building the Blazegraph custom jar
find .

echo Unpack the Blazegraph jar
mkdir -p bg
unzip -q d2/blazegraph.jar -d bg

echo Copy configs

cp RWStore.properties    bg/
cp log4j.properties      bg/war/WEB-INF/classes/log4j.properties
cp RWStore.properties    bg/war/WEB-INF/classes/RWStore.properties
cp RWStore.properties    bg/war/WEB-INF/RWStore.properties
cp GraphStore.properties bg/war/WEB-INF/GraphStore.properties



echo Build the jar
cd bg
zip -q -r ../blazegraph.jar .
cd ..

echo Copy the jar
cp blazegraph.jar /home/vlad/bb/blazegraph.jar


