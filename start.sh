#!/bin/bash

wget $IMAGE_URL -O /src/input.jpg

python /src/go.py
