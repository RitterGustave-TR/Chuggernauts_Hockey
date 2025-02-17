
FROM node:15.12.0

WORKDIR /app

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ADD . .

RUN npm install

EXPOSE 3000

ENTRYPOINT ["/entrypoint.sh"]

# This works
# CMD ["npm", "run", "dev", "--", "--host"]

CMD ["npm", "run", "dev"]