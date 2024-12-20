# Setup Guide

Welcome to the setup guide for our Java application! This guide will help you set up your development environment so you can contribute to the codebase.

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- [Java Development Kit (JDK) 17](https://adoptopenjdk.net/)
- [Apache Maven](https://maven.apache.org/)
- [Git](https://git-scm.com/)

## Getting Started

1. **Clone the repository:**

    ```sh
    git clone https://github.com/INFOM126-Automated-Software-Engineering/2048_Groupe_10.git
    cd INFOM126-Automated-Software-Engineering/2048_Groupe_10
    ```

2. **Set up Java:**

    Ensure that JDK 17 is installed and set as the default JDK.

    ```sh
    java -version
    ```

    You should see something like:

    ```sh
    openjdk version "17.0.1" 2021-10-19
    ```

3. **Install Maven:**

    Follow the instructions on the [Maven website](https://maven.apache.org/install.html) to install Maven.

    Verify the installation:

    ```sh
    mvn -version
    ```

    You should see something like:

    ```sh
    Apache Maven 3.8.4
    ```

4. **Build the project:**

    Navigate to the project directory and run:

    ```sh
    mvn clean install
    ```

    This will compile the code, run tests, and package the application.


## Contributing

Please refer to our [Contributing Guidelines](CONTRIBUTING.md) for information on how to contribute to the project.

Thank you for your interest in contributing to our project!
