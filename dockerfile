FROM quay.io/keycloak/keycloak:26.3.2

WORKDIR /opt/keycloak

COPY keycloak.conf /opt/keycloak/conf/

RUN /opt/keycloak/bin/kc.sh build

# Comando de inicialização
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--bootstrap-admin-username","admin","--bootstrap-admin-password", "admin","--optimized"]

