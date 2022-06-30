FROM gitpod/workspace-full

RUN DEBIAN_FRONTEND=noninteractive sudo apt-get update && \
    sudo apt-get install -y gnupg2 python3-pip && \
    sudo rm -rf /var/lib/apt/lists/* && \
    sudo apt-get clean

RUN python3 -m pip install --upgrade pip cffi && \
    pip install ansible && \
    pip install mitogen==0.2.10 ansible-lint jmespath && \
    pip install --upgrade pywinrm
