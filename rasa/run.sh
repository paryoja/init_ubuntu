#!/usr/bin/env bash
pwd=`pwd`
docker run -it --rm --network=mybridge --name=rasa -v $pwd:/work -p 5005:5005 yj0604park/general:rasa /bin/bash
