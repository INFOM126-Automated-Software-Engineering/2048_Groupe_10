# 2048

## Description
2048 is a simple yet addictive puzzle game. The objective is to slide numbered tiles on a grid to combine them and create a tile with the number 2048. Each move introduces a new tile with a value of 2 or 4. The game ends when no more moves are possible.

## How to Play
There are three ways to play this game:

1. **Compile the code yourself**:
   - Make sure you have Maven installed.
   - Clone the GitHub repository:
     ```bash
     git clone https://github.com/INFOM126-Automated-Software-Engineering/2048_Groupe_10.git
     ```
   - Navigate to the project directory:
     ```bash
     cd 2048_HARITTANE_SIEWE_KOUETA
     ```
   - Compile the project with Maven:
     ```bash
     mvn clean install
     ```
   - Run the game:
     ```bash
     java -jar target/2048-1.0-SNAPSHOT.jar
     ```

2. **Download the .jar file**:
   - Go to the "Package" tab of this GitHub repository.
   - Download the `***.jar` file.
   - Run the game:
     ```bash
     java -jar ***.jar
     ```

3. **Use the Docker scripts**:
   - Make sure you have Docker installed.
   - Clone the GitHub repository:
     ```bash
     git clone https://github.com/INFOM126-Automated-Software-Engineering/2048_Groupe_10.git
     ```
   - Navigate to the project directory:
     ```bash
     cd /2048_HARITTANE_SIEWE_KOUETA/scripts
     ```
   - Run the script to install the Docker image and the X11 server for the GUI on macOS:
     ```bash
     ./Open_Docker_MacOS.sh
     ```
   - For Windows, run the PowerShell script:
     ```powershell
     ./Open_Docker_Windows.ps1
     ```
Enjoy playing 2048! 
