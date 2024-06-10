# Utiliza a imagem oficial do MySQL
FROM mysql:latest

# Define variáveis de ambiente
ENV MYSQL_ROOT_PASSWORD=root_academy
ENV MYSQL_DATABASE=academy
ENV MYSQL_USER=academy
ENV MYSQL_PASSWORD=@academy

# (Opcional) Copia scripts de inicialização para o container
# Copie os arquivos .sql ou .sh para o diretório /docker-entrypoint-initdb.d/
# ADD ./path/to/sqlscript.sql /docker-entrypoint-initdb.d/

# Define o volume para persistir os dados
VOLUME ["/var/lib/mysql"]

# Exponha a porta 3306
EXPOSE 3306
