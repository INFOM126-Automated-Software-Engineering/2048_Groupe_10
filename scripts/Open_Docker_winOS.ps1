# Fonction pour vérifier si Chocolatey est installé
function Check-ChocoInstalled {
    if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
        Write-Host "Chocolatey n'est pas installé. Installation en cours..."
        
        # Installer Chocolatey
        Set-ExecutionPolicy Bypass -Scope Process -Force
        [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
        Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

        if (-not (Get-Command choco -ErrorAction SilentlyContinue)) {
            Write-Error "Erreur lors de l'installation de Chocolatey. Veuillez l'installer manuellement."
            Exit 1
        } else {
            Write-Host "Chocolatey a été installé avec succès."
        }
    } else {
        Write-Host "Chocolatey est déjà installé."
    }
}

#Fonction pour vérifier si Xming est installé
function Check-XmingInstalled {
    $xmingInstalled = choco list | Select-String -Pattern '^xming'
    if ($xmingInstalled) {
        return $true
    } else {
        return $false
    }
}

#Fonction pour installer Xming
function Install-Xming {
    Write-Host "Xming n'est pas installé. Installation en cours..."
    choco install xming -y
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Xming a été installé avec succès."
    } else
    {
        Write-Error "Erreur lors de l'installation de Xming."
        Exit 1
    }
}

#Fonction pour lancer Xming
function Launch-Xming {
    Write-Host "Lancement de Xming..."
    Start-Process "C:\Program Files (x86)\Xming\Xming.exe" -ArgumentList ":0 -clipboard -multiwindow"
}

#Fonction pour vérifier si Docker Desktop est installé
function Check-DockerInstalled {
    if (-not (Get-Command docker -ErrorAction SilentlyContinue)) {
        Write-Host "Docker Desktop n'est pas installé. Veuillez l'installer depuis https://www.docker.com/products/docker-desktop."
        Exit 1
    } else {
        Write-Host "Docker Desktop est déjà installé."
    }
}

# Fonction Configurer et lancer le Jeu dans Docker avec Xming.
function Configure-DockerForXming {
    Write-Host "Configuration de Docker pour Xming..."
    
    # Définir la variable DISPLAY
    $env:DISPLAY = "localhost:0.0"
    Write-Host "Variable DISPLAY configurée pour Docker : $env:DISPLAY"

    # Vérifier si Docker est en cours d'exécution
    $dockerProcess = Get-Process -Name "Docker Desktop" -ErrorAction SilentlyContinue
    if ($dockerProcess) {
        Write-Host "Docker Desktop est en cours d'exécution. 2048 s'exécuteras dans le conteneur avec support graphique." -ForegroundColor Green
        docker run -e DISPLAY=host.docker.internal:0.0 --rm sasuke3/2048:latest
    } else {
        Write-Host "Docker Desktop n'est pas en cours d'exécution. . Veuillez le démarrer et reesayer." -ForegroundColor Yellow
        
    }
}

# Script principal
Check-ChocoInstalled

if (Check-XmingInstalled) {
    Write-Host "Xming est déjà installé."
} else {
    Install-Xming
}

Launch-Xming
Check-DockerInstalled
Configure-DockerForXming