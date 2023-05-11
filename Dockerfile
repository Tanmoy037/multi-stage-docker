FROM ubuntu As build

RUN apt-get update && \
    apt-get install -y python3 python3-pip


WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

FROM gcr.io/distroless/python3

COPY --from=build /app /app

EXPOSE 5000

CMD python ./hello.py

