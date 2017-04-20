#/bin/bash

# Checked install docker

if ! [ -x "$(which docker)" ]; then
  wget -qO- https://get.docker.com/ | sh
  sudo usermod -aG docker $(whoami)
fi

# Install python-pip

sudo apt-get -y install python-pip

# Checked install docker-compose

if ! [-x "$(which docker-compose)" ]; then
  sudo pip install docker-compose
fi

# Run docker-compose up --build

docker-compose -f docker-compose.yml up --build

# Remove all stopped containers

docker rm $(docker ps -a -q -f status=exited)
