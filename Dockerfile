# Origin image
FROM ubuntu:16.04

# Meta Information
# https://www.exploit-db.com/exploits/48423

# update
RUN apt update

# Setup Server Environment
RUN apt install -y \
    apache2 \
    php \
    libapache2-mod-php \
    php-mysql \
    php-simplexml \
    php-curl
# add new user if it is needed
# RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
# RUN echo "ctf:ctf" | chpasswd

# Entry point
ENTRYPOINT service apache2 start && /bin/bash
