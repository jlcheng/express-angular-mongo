#!/bin/bash

start() {
  node node_modules/supervisor/lib/cli-wrapper.js -i public app
}

if [ -d node_modules ]; then
  start
else
  npm install
  start
fi
