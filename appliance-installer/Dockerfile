FROM alpine/ansible

WORKDIR /installer
COPY . /installer

CMD ansible-playbook --diff installer-*.yml
