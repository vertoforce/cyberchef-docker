FROM httpd:2.4.43-alpine

ARG CYBERCHEF_DIR

RUN rm -r /usr/local/apache2/htdocs/*
COPY $CYBERCHEF_DIR /usr/local/apache2/htdocs/