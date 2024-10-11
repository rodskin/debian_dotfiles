#!/bin/bash

# Vérifier si la variable d'environnement est définie et égale à "test"
if [ "$BDD_PREPROD_HOST" != "172.16.210.81" ]; then
    echo "Erreur: Connexion impossible, la variable n'est pas égale à test"
    exit 1
fi

exit 0

