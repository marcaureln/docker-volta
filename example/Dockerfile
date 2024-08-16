FROM ghcr.io/marcaureln/volta:2.0.0-noble

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

CMD ["npm", "start"]