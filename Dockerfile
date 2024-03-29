FROM ubuntu:20.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install --yes --no-install-recommends \
    python3 \
    python3-pip

RUN python3 -m pip install setuptools==60.0.0

COPY . /app

RUN python3 -m pip install --disable-pip-version-check --no-cache-dir --no-deps --editable=/app
RUN python3 -c 'import testeditable'

