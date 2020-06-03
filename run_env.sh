#/bin/bash

docker run --rm -it -p 4567:4567 -v ${PWD}:/home/app/ ruby:2.5.7 /bin/sh