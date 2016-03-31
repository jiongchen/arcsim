#!/bin/bash

exe=build/src/arcsim
cf=conf/abc64.json

#rm ./build/march29/*
$exe simulate $cf
#$exe simulateoffline $cf ./build/march29
#$exe resumeoffline ./build/march29