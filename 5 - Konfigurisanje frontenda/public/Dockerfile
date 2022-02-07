FROM nginx:latest
WORKDIR /usr/share/nginx/html/
COPY index.html .
COPY script.js .
COPY style.css .
RUN mkdir resources
COPY resources/* ./resources
# Since we are going to use Istio service mesh or Ingress network adapter for direct proxy
# we won't need definition for direct proxying request(s)
# This issue is resolved on the Ingress/Istio level
# COPY nginx/nginx-config.conf /etc/nginx/conf.d/
# No exposition on port 5900
#EXPOSE 5900
EXPOSE 80
