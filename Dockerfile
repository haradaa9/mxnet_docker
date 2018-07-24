FROM mxnet/python:gpu
ENV NVIDIA_VISIBLE_DEVICES=all \ 
    NVIDIA_DRIVER_CAPABILITIES=compute,utility
WORKDIR .
RUN pip install matplotlib \
 				awscli \
 				pandas \
 				scipy 
RUN apt-get update
RUN apt-get install -y ffmpeg \
						curl
#変更がありそうな箇所
COPY ./src/ ./
RUN chmod +x run_app.sh
