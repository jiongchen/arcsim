#!/bin/bash

exe=build/src/arcsim
#cf=conf/flag.json
cf=conf/sphere_copy.json

#rm ./build/march29/*
#$exe simulate $cf 
#$exe simulateoffline $cf ./build/windy_flag
$exe simulateoffline $cf ./build/ball

#$exe simulate conf/dress-blue.json
#$exe resumeoffline ./build/march29