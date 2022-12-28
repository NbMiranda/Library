# Librarty PDO

Para instalar o mysqli

docker exec -ti <your-php-container> sh
>> docker-php-ext-install mysqli 
>> docker-php-ext-enable mysqli
>> apachectl restart


INTALANDO PDO

>> docker exec -ti <your-php-container> sh
>> docker-php-ext-install pdo pdo_mysql
>> docker-php-ext-enable pdo pdo_mysql
>> apachectl restart
