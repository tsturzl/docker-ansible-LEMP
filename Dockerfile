FROM ansible/ubuntu14.04-ansible:stable

RUN mkdir /provision
ADD ansible /provision
WORKDIR /provision

RUN ansible-playbook lemp.yml -c local

EXPOSE 80

#kick of multiple processes in container with supervisord
ENTRYPOINT ["/usr/local/bin/supervisord", "-c", "/etc/supervisord.conf"]
