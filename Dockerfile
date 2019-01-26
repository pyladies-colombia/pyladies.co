FROM python:3.6.5

ENV PYTHONUNBUFERED=1
ENV WEBAPP_DIR=/webapp

RUN mkdir $WEBAPP_DIR

ADD ./requirements.txt $WEBAPP_DIR

RUN pip install --upgrade pip
RUN pip install -r $WEBAPP_DIR/requirements.txt

ADD ./ $WEBAPP_DIR/