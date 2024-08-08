FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim
RUN apt-get update
RUN apt-get install pkg-config libmysqlclient-dev build-essential -y
RUN pip install --upgrade pip
WORKDIR /usr/src/app
COPY ./python/requirements.txt /usr/src/app/
RUN pip install -r /usr/src/app/requirements.txt
RUN gunicorn --workers 4 --bind 0.0.0.0:8080 --access-logfile - --error-logfile - app:app --chdir /usr/src/app/