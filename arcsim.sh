#!/bin/bash

exe=build/src/arcsim
cf=conf/dress-blue.json

#rm ./build/march29/*
$exe simulateoffline $cf ./build/dress_26k
#$exe simulate conf/dress-blue.json
#$exe resumeoffline ./build/march29