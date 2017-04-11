FROM alpine
RUN apk add --update nodejs
COPY package.json /tmp/install/package.json
WORKDIR /tmp/install
RUN npm install --production && \
    mkdir -p /app && \
    mv /tmp/install/* /app && \
    rm -rf /tmp/install
COPY ./src /app/src 
EXPOSE 8000
WORKDIR /app
CMD ["npm", "start"]
