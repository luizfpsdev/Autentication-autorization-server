FROM quay.io/keycloak/keycloak:26.3.2

WORKDIR /opt/keycloak

COPY keycloak.conf /opt/keycloak/conf/
COPY themes /opt/keycloak/themes

RUN /opt/keycloak/bin/kc.sh build

# Comando de inicialização
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev", "--spi-theme--static-max-age=-1", "--spi-theme--cache-themes=false", "--spi-theme--cache-templates=false"]

