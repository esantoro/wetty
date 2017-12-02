FROM node:0.10.38
MAINTAINER Emanuele Santoro <emanuele@santoro.tk>

ADD . /app
WORKDIR /app
RUN npm install
RUN useradd -d /home/term -m -s /bin/bash term
RUN echo 'term:term' | chpasswd
USER term

EXPOSE 3000

ENTRYPOINT ["node"]
CMD ["app.js", "-p", "3000"]
