FROM yankennedyio/deepdream
RUN apt-get install -y wget
ADD ./go.py /src/
CMD wget $IMAGE_URL /src/input.jpg

ENTRYPOINT ['python', '/src/go.py']
