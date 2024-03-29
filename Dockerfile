FROM ubuntu 

RUN apt-get update && \
    apt-get install -y python3 python3-pip


WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD python ./hello.py

