#locator dockerfile

FROM python:3.8-slim-buster

RUN su -
RUN apt update
RUN apt install sudo -y
RUN exit

RUN sudo apt install git -y

RUN git clone https://github.com/kr-colab/locator.git

WORKDIR locator

RUN pip install -r req.txt

RUN chmod -R 777 *

CMD ["/bin/bash"]
