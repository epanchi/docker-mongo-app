FROM node:18

RUN mkdir -p /home/app

COPY . /home/app

EXPOSE 3000
CMD ["npm","install"]
CMD ["node", "/home/app/index.js"]
