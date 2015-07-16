FROM ryankennedyio/deepdream
RUN apt-get install -y wget
RUN pip install imgurpython
ADD . /src/

ENTRYPOINT /src/start.sh
