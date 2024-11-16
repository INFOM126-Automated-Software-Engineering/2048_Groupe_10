# 2048
 
# Utiliser 2048 avec Docker
Avec macOS

Il faut mettre en place un serveur x11 (XQuartz pour macOS ca marche très bien):
après l'avoir installer, on tape la commande : \ 

xhost + \ 

pour pourmettre au conteneur Docker d'ouvrir la socker TCP avec le serveur x11 et avoir la GUI accessible

Commande Docker :

docker run \
  -e DISPLAY=host.docker.internal:0 \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --rm sasuke3/2048:latest
 Normalement cela marche !
