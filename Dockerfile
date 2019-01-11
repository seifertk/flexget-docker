FROM python:3.5-alpine
RUN pip install --upgrade setuptools \
    && pip install flexget~=2.18.1

WORKDIR /flexget
VOLUME /flexget

ENTRYPOINT ["flexget"]
