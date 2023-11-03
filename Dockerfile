# Utilisation de l'image de base Node.js 16
FROM node:16

# Définition du répertoire de travail dans le conteneur
WORKDIR /usr/src/app/feed

# Copie des fichiers package.json et package-lock.json
COPY package*.json ./

# Installation des dépendances de l'application
RUN npm ci

# Copie du reste du code source de l'application
COPY . .

# Exposition du port 8080
EXPOSE 8080

# Commande pour exécuter l'application en mode de développement
CMD [ "npm", "run", "dev" ]
