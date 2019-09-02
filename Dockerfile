#Usando uma image do debian e instalando o node para rodar a aplicação

FROM debian

RUN apt update 
RUN apt-get install curl software-properties-common -y
#RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -

RUN apt-get install nodejs -y
RUN apt-get install npm -y

WORKDIR /usr/app
COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm","start"]

EXPOSE 3000

#docker build -t rsouza/debian .
#docker run -d -it -p 3000:3000 rsouza/debian
