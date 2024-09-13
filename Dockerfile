# Utiliser l'image Nginx officielle
FROM nginx:latest

# Copier les fichiers construits par Maven dans le répertoire où Nginx sert les fichiers
COPY /kubernetes/*.war /usr/share/nginx/html/myapp

# Exposer le port 80
EXPOSE 80

# Démarrer Nginx
CMD ["nginx", "-g", "daemon off;"]
