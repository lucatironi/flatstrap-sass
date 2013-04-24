#!/bin/bash

ROOT=`pwd`"/vendor/assets"
TMP='tmp/sass-littlesparkvt-flatstrap'
# Pull down sass-littlesparkvt-flatstrap sources
git clone https://github.com/littlesparkvt/flatstrap.git tmp/sass-littlesparkvt-flatstrap
# Copy assets/scss/ to stylesheets/
mkdir -p $ROOT/stylesheets/flatstrap
mkdir -p $ROOT/javascripts
cp -r $TMP/assets/scss/* $ROOT/stylesheets/flatstrap
# Copy assets/js/ to javascripts/
cp -r $TMP/assets/js/* $ROOT/javascripts
# Remove tests
rm -r $ROOT/javascripts/tests
rm -r $ROOT/stylesheets/flatstrap/tests

# Patch paths in bootstrap-responsive.scss and responsive.scss
sed -i .bak 's_@import \"_@import \"flatstrap/_g' $ROOT/stylesheets/flatstrap/{bootstrap,bootstrap-responsive}.scss
sed -i .bak 's/..\/..\/font/\/assets/' $ROOT/stylesheets/flatstrap/_font-awesome.scss
rm $ROOT/stylesheets/flatstrap/*.bak

rm -rf $TMP