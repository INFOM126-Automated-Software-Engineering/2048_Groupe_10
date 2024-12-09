#!/bin/bash

# Fonction pour vérifier si Homebrew est installé
check_brew_installed() {
    if ! command -v brew &>/dev/null; then
        echo "[INFO]: [INFO]: Homebrew n'est pas installé. Installation en cours..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        if [ $? -eq 0 ]; then
            echo "[INFO]: Homebrew a été installé avec succès."
            eval "$(/opt/homebrew/bin/brew shellenv)" # Charge Homebrew dans l environnement
        else
            echo "[INFO]: Erreur lors de l'installation de Homebrew." >&2
            exit 1
        fi
    else
        echo "[INFO]: Homebrew est déjà installé."
    fi
}

# Fonction pour vérifier si XQuartz est installé
check_xquartz_installed() {
    if brew list --cask | grep -q "^xquartz\$"; then
        return 0 # Le paquet est installé
    else
        return 1 # Le paquet n'est pas installé
    fi
}

# Fonction pour installer XQuartz
install_xquartz() {
    echo "[INFO]: XQuartz n'est pas installé. Installation en cours..."
    brew install --cask xquartz
    if [ $? -eq 0 ]; then
        echo "[INFO]: XQuartz a été installé avec succès."
    else
        echo "[INFO]: Erreur lors de l'installation de XQuartz." >&2
        exit 1
    fi
}

# Fonction Configurer et lancer le Jeu dans Docker avec XQuartz.
open_2048Game_wich_docker() {
    echo "[INFO]: Ouverture de Docker XQuartz..."
    defaults write org.xquartz.X11 nolisten_tcp -bool false  # 'false' pour Autorise les connexions réseau.
    osascript -e 'quit app "XQuartz"' # killall XQuartz
    open -a XQuartz
    sleep 4
    export DISPLAY=:0
    xhost +
    docker run -e DISPLAY=host.docker.internal:0 -v /tmp/.X11-unix:/tmp/.X11-unix --rm sasuke3/2048:latest
}

# Script principal
check_brew_installed

if check_xquartz_installed; then
    echo "[INFO]: XQuartz est déjà installé."
else
    install_xquartz
fi

open_2048Game_wich_docker