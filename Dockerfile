# Stage 1: Build
FROM alpine:latest AS build

# Installe git et perl
RUN apk --no-cache add git perl

# Clone le référentiel git
RUN git clone https://github.com/tnalpgge/rank-amateur-cowsay.git

# Exécute le script d'installation
RUN cd rank-amateur-cowsay && \
    ./install.sh /usr/local &&  cd .. && rm -rf /rank-amateur-cowsay
ENTRYPOINT ["/usr/local/bin/cowsay", "-f", "tux"]

# Stage 2: Image finale
FROM alpine:latest AS final

RUN apk add -U --no-cache perl
# Copie seulement les fichiers nécessaires depuis le stage build
COPY --from=build /usr/local/bin/cowsay /usr/local/bin/
COPY --from=build /usr/local/share/cows/tux.cow /usr/local/share/cows/

# Point d'entrée
ENTRYPOINT ["/usr/local/bin/cowsay", "-f", "tux"]
