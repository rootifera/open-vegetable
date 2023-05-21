FROM python:3

WORKDIR /usr/src/app

COPY setup.py .
COPY hello hello/

RUN python setup.py install

ENV FLASK_APP=hello

CMD [ "flask", "run", "--host=0.0.0.0" ]
