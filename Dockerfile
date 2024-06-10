# Dockerfile para a aplicação Next.js
FROM node:18-alpine

# Define o diretório de trabalho no container
WORKDIR /app

# Copia package.json e package-lock.json para o contêiner
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante do código da aplicação para o contêiner
COPY . .

# Build da aplicação Next.js
RUN npm run build

# Exposição da porta que o Next.js usa
EXPOSE 3000

# Comando para iniciar o Next.js
CMD ["npm", "run", "start"]