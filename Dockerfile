FROM python:3.9-slim-buster
ENV PYTHONUNBUFFERED=1

WORKDIR /rabbitmq

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

# ENTRYPOINT ["/bin/sh", "/rabbitmq/start.sh"]
# CMD [ "python" "app.py" ]