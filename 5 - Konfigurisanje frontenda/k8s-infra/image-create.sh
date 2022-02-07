#!/bin/bash

# Prvo kreiramo image: umesto dichtung, koristiti sopstveni username sa DockerHub-a!
# context je u drugom folderu
docker build -t dichtung/k8s-catalyzator-fe:1.0.0 ../public

# Radimo delivery na image registry
docker push dichtung/k8s-catalyzator-fe:1.0.0

# dodali smo k8s prefix da znamo da razlikujemo od prethodnih image-a (od ranije)