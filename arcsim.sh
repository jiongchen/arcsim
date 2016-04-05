#!/bin/bash

exe=build/src/arcsim
cf=conf/flag.json

#rm ./build/march29/*
$exe simulateoffline $cf ./build/wind_flag
#$exe simulateoffline $cf ./build/march29
#$exe resumeoffline ./build/march29