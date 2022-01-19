#Allows the execution of docker without sudo.
#As this has security implications use sudomoredocker.sh after this asap
adduser $USER docker
addgrp docker
