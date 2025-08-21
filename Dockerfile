FROM postgres:17-alpine

LABEL authors="vovka@krevedko.su"

USER root

ENV LANG ru_RU.UTF-8
ENV LC_ALL ru_RU.UTF-8

USER postgres

COPY docker-entrypoint-initdb.d/* /docker-entrypoint-initdb.d/