FROM yankennedyio/deepdream
RUN apt-get install -y wget
ADD ./go.py /src/

ENTRYPOINT /src/start.sh
