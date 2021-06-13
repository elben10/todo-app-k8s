FROM node:14 as build-stage

WORKDIR /app

COPY src/frontend/package*.json /app/

RUN npm install

COPY src/frontend/ /app/

RUN npm run build

FROM nginx:1.21

COPY --from=build-stage /app/build/ /usr/share/nginx/html