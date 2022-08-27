FROM ubuntu:20.04
SHELL ["/bin/bash", "-c"]
RUN apt update \
    && apt upgrade -y \
    && apt install git -y \
    && cd $HOME \
    && git clone https://github.com/uchan-nos/mikanos-build.git osbook \
    && apt install ansible -y \
    && cd $HOME/osbook/devenv \
    && ansible-playbook -K -i ansible_inventory ansible_provision.yml \
    && cd $HOME/edk2 
