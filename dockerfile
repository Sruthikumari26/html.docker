FROM python:3

WORKDIR /usr/src/app

COPY index.html
RUN pip install --no-cache-dir -r index.html

COPY . .

CMD [ "python", "./your-daemon-or-script.py" ]
