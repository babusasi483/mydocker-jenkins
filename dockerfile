# use the offical ubuntu image as the base images
from ubuntu

# update the package list and install apache2
run apt-get update -y && \
    apt-get install apache2 -y

# copy the index.html file to the apache root directory
copy index.html /var/www/html/

# start the apache2 service in the foreground
ENTRYPOINT ["/user/sbin/apachectl", "-D", "FOREGROUND"]

