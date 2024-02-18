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

# Set the extensions directory
EXTENSIONS_DIR="/home/developer/.local/share/code-server/extensions"

# Install extensions
code-server --install-extension ms-python.python --extensions-dir $EXTENSIONS_DIR
code-server --install-extension ms-toolsai.jupyter --extensions-dir $EXTENSIONS_DIR
code-server --install-extension ms-python.vscode-pylance --extensions-dir $EXTENSIONS_DIR
code-server --install-extension njpwerner.autodocstring --extensions-dir $EXTENSIONS_DIR
code-server --install-extension mechatroner.rainbow-csv --extensions-dir $EXTENSIONS_DIR


cd /home/developer/playground/playground
poetry config virtualenvs.in-project false
poetry config virtualenvs.path /home/developer/.venvs
poetry install
poetry shell
python -m ipykernel install --user --name="my-playground"

# Start code-server
code-server --bind-addr 0.0.0.0:8081 --auth none

nohup jupyter notebook > jupyter.log 2>&1 &