Alteração da imagem do keycloak para gerar uma imagem personalizada, com temas próprios etc


### Execução
- docker build -t keycloak-custom:1.0 .
- run --restart always --network padoca-network --name padoca-keycloak -p 8080:8080 keycloak-custom:1.0

-Obs: por enquanto devemos rodar os container na mesma base de dados
 - foi necessário executar o comando para criar um usuário de admin inicial no modo de produção ./kc.sh bootstrap-admin user --username admin
