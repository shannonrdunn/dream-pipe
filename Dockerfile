FROM ryankennedyio/deepdream
RUN apt-get install -y wget
ADD . /src/

ENTRYPOINT /src/start.sh
