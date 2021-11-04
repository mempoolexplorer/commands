#!/bin/bash

cd "$(dirname "$0")"
cd ../mempool-explorer
echo 
echo "Building Fronted at:" $(pwd) "....."
npm run build
