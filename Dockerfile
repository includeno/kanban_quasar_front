FROM includeno/node-yarn
RUN mkdir -p /app
WORKDIR /app
COPY . /app

CMD ["-c","yarn && yarn run lint && quasar build -m electron"]