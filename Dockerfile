FROM tensorflow/tensorflow 

WORKDIR /audios

RUN apt-get install libglib2.0-0 libfontconfig1 libxrender1 libsm6 libxext6 ffmpeg -y

ADD requirements.txt /audios

RUN pip install -r requirements.txt

ADD . /audios

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888"]

