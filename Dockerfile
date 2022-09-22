FROM python:3.8.7
RUN apt-get update \
    && apt-get install docker.io -y\
    && apt-get install nano \
    && apt-get install -y libaio1 libaio-dev unzip \
    && wget https://download.oracle.com/otn_software/linux/instantclient/195000/instantclient-basic-linux.x64-19.5.0.0.0dbru.zip \
    && unzip instantclient-basic-linux.x64-19.5.0.0.0dbru.zip \
    && mkdir -p /opt/oracle \
    && mv instantclient_19_5 /opt/oracle \
    && pip install pipenv \
    && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs
