#! /bin/bash

# Clone playgroung if it doesn't exist
# ToDo: move to main branch before merging!!!!!!!!!!
if [ ! -d "./playground" ]; then \
    git init playground \
    && cd /home/developer/playground \
    && git config init.defaultBranch feature/add-proper-dev-container \
    && git remote add origin https://github.com/dependencyInversion/quasar-online-ide.git \
    && git config core.sparseCheckout true \
    && echo "playground" >> .git/info/sparse-checkout \
    && git pull origin feature/add-proper-dev-container; \
fi

poetry install

# Start code-server
code-server --bind-addr 0.0.0.0:8081 --auth none