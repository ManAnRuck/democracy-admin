FROM node:10.5.0

# TMP - Yarn fix
RUN mkdir -p /opt/yarn/bin && ln -s /opt/yarn/yarn-v1.5.1/bin/yarn /opt/yarn/bin/yarn

WORKDIR /app

COPY . .

RUN yarn install

ENTRYPOINT [ "./entrypoint.sh" ]