FROM quay.io/keycloak/keycloak:26.3.2

WORKDIR /opt/keycloak

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start-dev"]

