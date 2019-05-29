FROM rundeck/rundeck:SNAPSHOT

LABEL AUTHOR noe.a.gonzalez@gmail.com

# add custom plugins
COPY --chown=rundeck:root ./libext ./libext

# install ansible
ENV ANSIBLE_VERSION 2.7.11
RUN sudo apt-get update && \
    sudo apt-get install python-pip -y && \
    sudo rm -rf /var/lib/apt/lists/* && \
    pip2 install ansible==${ANSIBLE_VERSION} && \
    echo 'PATH=$PATH:$HOME/.local/bin' >> /home/rundeck/.bashrc
