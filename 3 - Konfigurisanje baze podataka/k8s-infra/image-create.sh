#!/bin/bash

# Prvo kreiramo odgovarajući image sa k8s prefiksom
docker build -t dichtung/k8s-catalyzator-mongo-db:1.0.0 ../

# Push na dockerhub (da moremo posle povuć' ako počistimo lokalni image registry)
docker push dichtung/k8s-catalyzator-mongo-db:1.0.0