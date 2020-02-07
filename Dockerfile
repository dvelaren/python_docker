# pull official base image
FROM python:3.7.4-slim

# set work directory
WORKDIR /hello_app

# copy project
COPY . /hello_app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# ENV LISTEN_PORT=5000
# EXPOSE 5000

# install dependencies
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -U pip
RUN pip install --no-cache-dir -r /requirements.txt

# run project
ENTRYPOINT [ "python" ]
CMD [ "main.py" ]
# CMD ["gunicorn", "-b", "0.0.0.0:9995", "-m", "007", "main:app"]
