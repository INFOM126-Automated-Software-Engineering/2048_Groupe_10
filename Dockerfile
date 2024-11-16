# Use an OpenJDK image based on Debian as the base
FROM openjdk:17-jdk-bullseye

# Set the working directory in the container
WORKDIR /app

# Install required X11 libraries and fonts
RUN apt-get update && apt-get install -y \
    libxext6 \
    libxrender1 \
    libxtst6 \
    libxi6 \
    libxt6 \
    libx11-6 \
    fonts-dejavu-core \
    fonts-dejavu-extra \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy the JAR file from the build output into the Docker image
COPY target/*.jar app.jar

# Set environment variables to ensure GUI compatibility
ENV DISPLAY=host.docker.internal:0
ENV JAVA_TOOL_OPTIONS="-Djava.awt.headless=false"

# Run the application
CMD ["java", "-jar", "app.jar"]

