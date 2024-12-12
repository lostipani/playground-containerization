FROM nginx:latest
COPY index.html /usr/share/nginx/html/

EXPOSE 80
# Expose is not publishing, so to reach the HTTP service from browser
# it is also needed to run the container with published ports, i.e.
# docker run -p 8080:80 [other options] <image name>

CMD ["nginx", "-g", "daemon off;"] 
# deamon off necessary because docker tracks the PID of the parent process
# so as to terminate the container asa this process is terminated.
# nginx, upon being launched, spawns master and children processes and
# terminates the parent one, if this flag not passed through -g (global
# configuration statement). Therefore the container is not terminated.