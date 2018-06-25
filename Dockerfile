FROM bkimminich/juice-shop

USER root

COPY ./contrib /usr/local/bin

RUN chown -R 1001:0 /juice-shop && \
  /usr/local/bin/fix-permissions /juice-shop

USER 1001
WORKDIR /juice-shop
