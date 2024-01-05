FROM ubuntu
RUN apt update && apt install -y cowsay && rm -rf /var/lib/apt/
ENTRYPOINT [ "/usr/games/cowsay" ]
CMD [ "Hello les DEVOPS!" ]