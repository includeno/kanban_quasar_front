FROM includeno/node-yarn
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN yarn
RUN yarn run lint
RUN quasar build -m electron

