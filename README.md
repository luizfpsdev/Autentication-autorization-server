Alteração da imagem do keycloak para gerar uma imagem personalizada, com temas próprios etc


### Execução
- docker build -t keycloak-custom:1.0 .
- docker run --restart always -p 8080:8080 keycloak-custom:1.0
