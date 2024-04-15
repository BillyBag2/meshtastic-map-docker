FROM node:21-alpine3.18 as base
WORKDIR /scripts
COPY deploy.sh deploy.sh
COPY web.sh web.sh
COPY mqtt.sh mqtt.sh
COPY migrate.sh migrate.sh
COPY meshtastic-map/ /app/
WORKDIR /app
RUN npm install
EXPOSE 8080

FROM base as deploy
CMD [ "/scripts/deploy.sh" ]
