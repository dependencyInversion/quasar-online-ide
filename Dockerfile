# Stage 1: Base stage for installing dependencies and building the app
FROM node:14 AS base
WORKDIR /app
COPY online-ide/package*.json ./
# Install Quasar CLI globally
RUN npm install -g @quasar/cli
# Install project dependencies
RUN npm install
# Copy the rest of the project
COPY ./online-ide .
RUN quasar build

FROM base AS development
RUN apt-get update && apt-get install -y \
    curl
EXPOSE 8080
CMD ["quasar", "dev", "--port", "8080"]
