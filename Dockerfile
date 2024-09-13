
FROM nginx:latest

# Créer un dossier pour l'application (Nginx sert les fichiers directement depuis /usr/share/nginx/html par défaut)
RUN mkdir -p /usr/share/nginx/html/myapp

# Copier votre fichier index.html dans le dossier de Nginx
COPY /kubernetes/index.html /usr/share/nginx/html/myapp/index.html

# Exposer le port 80 pour Nginx
EXPOSE 80

# Lancer Nginx en mode non-daemonisé (avant-plan)
CMD ["nginx", "-g", "daemon off;"]
