#!/bin/bash

# Create a temporary directory for the export
mkdir -p export_sgu

# Copy essential project files
cp -r src export_sgu/
cp -r public export_sgu/
cp package.json export_sgu/
cp package-lock.json export_sgu/
cp tsconfig.json export_sgu/
cp next.config.ts export_sgu/
cp postcss.config.mjs export_sgu/
cp .gitignore export_sgu/
cp components.json export_sgu/

# Create README with installation instructions
cat > export_sgu/README.md << 'EOL'
# Système de Gestion Universitaire (SGU)

## Installation

1. Installer les dépendances :
```bash
npm install
```

2. Lancer le serveur de développement :
```bash
npm run dev
```

3. Ouvrir [http://localhost:3000](http://localhost:3000) dans votre navigateur.

## Connexion

Utilisez les identifiants suivants pour tester :
- Étudiant : student@universite.fr (tout mot de passe)
- Professeur : prof@universite.fr (tout mot de passe)
- Admin : admin@universite.fr (tout mot de passe)

## Structure du Projet

- `/src/app` - Pages et routes de l'application
- `/src/components` - Composants réutilisables
- `/src/hooks` - Hooks personnalisés
- `/src/lib` - Utilitaires et configurations

## Fonctionnalités

- Authentification et gestion des sessions
- Tableau de bord étudiant
- Gestion des cours
- Emploi du temps
- Notes et résultats
- Gestion des devoirs
- Profil étudiant
EOL

# Create zip archive
zip -r sgu_project.zip export_sgu

# Clean up
rm -rf export_sgu

echo "Export terminé. Le fichier 'sgu_project.zip' a été créé."
