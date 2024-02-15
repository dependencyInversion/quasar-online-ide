# Use the official Python image as a base
FROM python:3.12-bookworm

# Install dependencies and necessary packages
RUN apt-get update && apt-get install -y \
    curl \
    git \
    fish \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -

# Install code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Create a normal user named "developer"
RUN useradd -m developer -s /usr/bin/fish

# Copy the startup script into the container
COPY startup-script.sh /usr/local/bin/startup-script.sh

# Make the startup script executable
RUN chmod +x /usr/local/bin/startup-script.sh

# Switch to the user "developer"
USER developer

# Set the working directory
WORKDIR /home/developer

# Expose port 8081
EXPOSE 8081
