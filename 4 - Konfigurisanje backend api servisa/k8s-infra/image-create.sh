#!/bin/bash

# Prvo kreiramo image: umesto dichtung, koristiti sopstveni username sa DockerHub-a!
# context je u drugom folderu, stoga .. kao prefiks
docker build -t dichtung/k8s-catalyzator-api:1.0.0 ../CatsAPI

# Radimo delivery na image registry
docker push dichtung/k8s-catalyzator-api:1.0.0

# dodali smo k8s prefix da znamo da razlikujemo od prethodnih image-a (od ranije)