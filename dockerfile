FROM python:3

WORKDIR /usr/src/app

COPY html.docker
RUN pip install --no-cache-dir -r html.docker

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
