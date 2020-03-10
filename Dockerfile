FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu16.04

RUN apt-get install -y software-properties-common
RUN Update-alternatives —install /usr/bin/python python /usr/bin/python3.5 1
RUN apt install -y python3-pip
RUN apt -y update
RUN python -m pip install --upgrade pip
RUN pip3 install jupyter
RUN mkdir src/
WORKDIR src/

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

EXPOSE 8888
