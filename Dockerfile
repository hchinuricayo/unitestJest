FROM node:16.16.0-alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . ./
RUN npm run build


# test stage
FROM nginx:stable-alpine as test-stage
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /usr/share/nginx/html/*
COPY --from=build-stage /app/dist /usr/share/nginx/html

EXPOSE 85
CMD [ "nginx", "-g", "daemon off;" ]
