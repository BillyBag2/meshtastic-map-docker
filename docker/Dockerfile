FROM node:21-alpine3.18 as base
WORKDIR /app
COPY deploy.sh deploy.sh
COPY web.sh web.sh
COPY mqtt.sh mqtt.sh
COPY migrate.sh migrate.sh
COPY meshtastic-map/ /app/
RUN npm install
EXPOSE 8080

FROM base as deploy
CMD [ "/app/deploy.sh" ]
