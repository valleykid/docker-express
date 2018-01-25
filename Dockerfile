FROM node:alpine
LABEL maintainer="valleykid(valleykiddy@gmail.com)"

WORKDIR /demo
COPY ./package.json /demo/
RUN npm config set package-lock false && \
  npm install --registry=https://registry.npm.taobao.org

COPY . /demo/
EXPOSE 3000

CMD [ "node", "index" ]
