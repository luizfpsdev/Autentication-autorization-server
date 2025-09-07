Alteração da imagem do keycloak para gerar uma imagem personalizada, com temas próprios etc


### Execução
- docker build -t keycloak-custom:1.0 .
- run --restart always --network padoca-network --name padoca-keycloak -p 8080:8080 keycloak-custom:1.0

-Obs: por enquanto devemos rodar os container na mesma base de dados
 - foi necessário executar o comando para criar um usuário de admin inicial no modo de produção ./kc.sh bootstrap-admin user --username admin
 - endereço login exemplo: http://localhost:8080/realms/padoca-realm/protocol/openid-connect/auth?client_id=padocamanager&redirect_uri=https%3A%2F%2Fwww.keycloak.org%2Fapp%2F%23url%3Dhttp%3A%2F%2Flocalhost%3A8080%26realm%3Dpadoca-realm%26client%3Dpadocamanager&state=d540cfc0-c037-48b5-8f47-8b050926a885&response_mode=fragment&response_type=code&scope=openid&nonce=388a94e8-61db-4ca8-916a-856a21958ec6&code_challenge=5MdsQ7lcuVHFmEIY4xHtRYxce5VmQ5hnhwJ-TlbE1Tk&code_challenge_method=S256

 - endereço login: http://localhost:8080/admin/master/console/#/master/realms
