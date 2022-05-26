FROM node:14-alpine as base
COPY . .
RUN npm install
RUN npm run build


FROM base
WORKDIR /app
COPY --from=base . /app
CMD ["npm", "run", "dev"]