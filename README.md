# Clothes-Shop-Backend

<h3>Install the Docker MySQL and phpMyAdmin Container</h3>

<ul>
<li>

<strong>Pull image</strong>
<p><a href="https://hub.docker.com/_/mysql">MySQL Docker Image</a></p>

```
docker pull mysql
```
<p><a href="https://hub.docker.com/_/phpmyadmin">phpMyAdmin Docker Image</a></p>

```
docker pull phpmyadmin
```
</li>
<li>

<strong>Run the container</strong>

```
docker run --name MySQL -e MYSQL_ROOT_PASSWORD=123456 -d mysql
```

```
docker run --name phpMyAdmin -d --link MySQL:db -p 8080:80 phpmyadmin
```
</li>
<li>

<strong>Create a database</strong>

```
docker exec -it MySQL bash
```

```
mysql -u root -p
```

```
CREATE DATABASE clothes_shop;
```
</li>
<li>
<strong>Import a database table</strong> 
  
open `http://localhost:8080` and choose a `clothes_shop` database from our created in the preceding, finally import `clothes_shop.sql` from `./database/` path
</li>

</ul>
