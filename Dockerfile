FROM julin/botsapp:latest

WORKDIR /

COPY . /rashirikun

WORKDIR /julin

RUN npm install

RUN git init --initial-branch=main

RUN git remote add origin https://github.com/rashirikun.git

RUN git fetch origin main

RUN git reset --hard origin/main

CMD [ "npm", "start"]
