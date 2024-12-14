# Pobranie obrazu bazowego Node.js
FROM node:18-alpine

# Ustawienie katalogu roboczego w kontenerze
WORKDIR /app

# Skopiowanie pliku package.json i package-lock.json
COPY package*.json ./

# Instalacja zależności
RUN npm install

# Skopiowanie wszystkich plików aplikacji do kontenera
COPY . .

# Wystawienie portu 8080 (jeśli aplikacja używa innego, zmień odpowiednio)
EXPOSE 8080

# Komenda uruchamiająca aplikację Node.js
CMD ["node", "app.js"]
