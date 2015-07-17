#!/bin/bash

wget $IMAGE_URL -O /src/input.jpg
wget $GUIDE_URL -O /src/guide.jpg


if [[ -z $JITTER || -z $OCTAVES || -z $INTERATION_N ]] ; then
	echo "WARNING: One or more options not set. Assuming Defaults"
  export
fi

if [ -z $OCTAVES] ; then
  echo "Setting Default Number of Octaves: 3"
  export OCTAVE=3
fi

if [ -z $INTERATION_N] ; then
  echo "Setting Default Number of Interations: 10"
  export INTERATION_N=3
fi

if [ -z $JITTER] ; then
  echo "Setting Default Jitter: 32"
  export JITTER=3
fi

find /src/go.py -type f | xargs sed -i -e "s#@@OCTAVE@@#${OCTAVE}#g"
find /src/go.py -type f | xargs sed -i -e "s#@@INTERATION_N@@#${INTERATION_N}#g"
find /src/go.py -type f | xargs sed -i -e "s#@@JITTER@@#${JITTER}#g"


python /src/go.py
python /src/imgur.py
