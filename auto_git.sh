#!/bin/bash

WATCH_DIR=~/Documents/mon-site

auto_commit() {
    cd $WATCH_DIR || exit 1
    git add -A
    
    if [[ $(git status --porcelain) ]]; then
        git commit -m "Mise à jour automatique"
        git push origin main
        echo "📤 Modifications envoyées sur GitHub"
    else
        echo "✅ Aucun changement détecté"
    fi
}

fswatch -o $WATCH_DIR | while read -r f; do sleep 5; auto_commit; done

