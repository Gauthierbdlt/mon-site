#!/bin/bash
code ~/Documents/mon-site/mon-site.code-workspace  # Ouvre le workspace dans VS Code
cd ~/Documents/mon-site  # Va dans le dossier du projet
git add .  # Ajoute tous les fichiers modifiés
git commit -m "Auto-commit au lancement"  # Fait un commit automatique
git push origin main  # Envoie sur GitHub


