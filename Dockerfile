FROM node:8.14.0
RUN mkdir -p /app/build
WORKDIR /app/build
COPY . .
RUN npm install -g nodeppt --registry=https://registry.npm.taobao.org 
RUN nodeppt release

FROM nginx:1.15.5
COPY --from=0 /app/build/publish/ /usr/share/nginx/html
