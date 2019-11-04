FROM yj0604park/general:18.04
MAINTAINER yj0604.park@gmail.com

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN python3 -m pip install tensorflow==1.14.0

RUN python3 -m pip install rasa-x --extra-index-url https://pypi.rasa.com/simple
ENV PYTHONIOENCODING 'utf8'
