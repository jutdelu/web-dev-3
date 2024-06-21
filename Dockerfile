# Use uma imagem base do Node.js
FROM node:18-alpine

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copie o package.json e o package-lock.json
COPY package*.json ./

# Instale as dependências do projeto
RUN npm install

# Copie todo o código do projeto para o diretório de trabalho
COPY . .

# Gerar o banco de dados
RUN npm run prisma

# Compile o TypeScript para JavaScript
RUN npm run build

# Exponha a porta que o seu app vai rodar
EXPOSE 3000

# Comando para rodar a aplicação
CMD ["node", "build/server.js"]
