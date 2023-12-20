FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    python3 \
    python3-pip \
    ffmpeg \
    libsm6 \
    libxext6 \
    git

# WORKDIR /home/alexandrz/Projects

RUN git clone https://github.com/Jerrehy/YoloV8-App.git App
WORKDIR /App
RUN pip install -r requirements.txt


CMD [ "streamlit", "run", "app.py" ]