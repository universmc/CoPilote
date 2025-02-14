#!/bin/bash

# Nom du projet par défaut
project_name="Copilote"

# Vérifier si un nom de projet est passé en argument
if [ "$#" -eq 1 ]; then
  project_name="$1"
fi

# Créer les répertoires
mkdir -p .setup build data models src/{html,css,json,js,svg,scss,ascii,composants,pages} srv/{json,role}

# Créer les fichiers
touch src/html/index.html src/svg/icon.svg src/css/styles.css src/js/scripts.js srv/server.json

# Initialiser un projet npm

# Créer un fichier .gitignore
cat > .gitignore << EOF
node_modules
build
.vscode
EOF

echo "Projet $project_name créé avec succès !"