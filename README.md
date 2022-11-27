# Clothes-Shop-Backend

<h3>Install the Docker MySQL and phpMyAdmin Container</h3>

<ul>
<li>

<strong>Pull Image</strong>
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

<strong>Create a Database</strong>

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

</ul>
