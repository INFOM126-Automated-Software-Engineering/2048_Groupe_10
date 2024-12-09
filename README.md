# Configurer et lancer le Jeu dans Docker
 

## Fonctionnement de global des scripts

- Le conteneur exécute l'application 2048 incluse dans l'image ```sasuke3/2048:latest```.
- Les données graphiques générées par l'application dans le conteneur sont redirigées vers le serveur X (Xming pour Windowet XQuartz pour MacOS) en cours d'exécution sur l'hôte via la variable ```DISPLAY``` .
- Le jeu 2048 devrait s'ouvrir dans une fenêtre graphique sur le bureau Windows/MacOS, redirigé via Xming/XQuartz.
- Une fois que vous fermez l'application, le conteneur Docker sera automatiquement supprimé grâce à l'option ```--rm```.


### Sur MacOS (XQuartz)
sur MacOS, le script utilise Homebrew comme gestionnaire de paquets pour gérer les installations.
le script installe et configurer XQuartz pour qu'il fonctionne avec l'application Docker.

#### Pré-requis
- Assurez-vous que Docker est déjà installé sur votre système avant d'exécuter le script.
- Homebrew : il est preferable d'avoir deja Homebrew installer et bien configuré sur votre macOS avant d'exécuter ce script. Si Homebrew n'est pas installé, il télécharge et installe automatiquement Homebrew.
  Homebrew sera installé dans ```/opt/homebrew``` sur les Mac utilisant une architecture Apple Silicon (M1/M2). Sur les Mac Intel, il sera installé dans ```/usr/local```.
- XQuartz : Si vous avez déjà une version installée manuellement (hors Homebrew), 
le script ne la détectera pas et installera une nouvelle instance de XQuartz via Homebrew. Toutes les installations s'effectue via Homebrew pour plus de simplicité.

Ouvrez un Terminal et exécutez les commandes suivantes:

1. Rendez le script exécutable

``` bash
chmod +x Open_Docker_MacOS.sh
```
2. Exécutez le script :

``` bash
./Open_Docker_MacOS.sh
```

### Sur Windows (Xming)
sur Windows, le script utilise Chocolatey comme gestionnaire de paquets pour gérer les installations.
le script installe et configurer Xming pour qu'il fonctionne avec l'application Docker.
#### Pré-requis
- Assurez-vous que Docker est déjà installé sur votre système avant d'exécuter le script.

Ouvrez PowerShell en tant qu'administrateur et exécutez les commandes suivantes:

1. Afin de lancer des scripts non signé, il faut lever la restriction sous win 8/10/11

``` bash
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
```
2. Exécutez le script :

``` bash
.\Open_Docker_WinOS.ps1
```

