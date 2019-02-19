FROM node:carbon as builder
COPY ./web-app-proxy /app
WORKDIR /app
RUN npm install

FROM node:carbon
WORKDIR /app
COPY --from=builder /app .
CMD ["npm", "run", "start"]
