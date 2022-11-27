# Clothes-Shop-Backend

<h3>Introduction</h3>

You can import a database from `./database/clothes_shop.sql` into your MySQL and Postman Collections from `./cs.postman_collection` It might be useful for you. But if your device does not already have MySQL and phpMyAdmin, you can follow the instructions at the bottom to install them using Docker.

<h3>Setting up your local environment</h3>

create an `.env` file in the application root directory.

```
DB_HOST=localhost
DB_USERNAME=root
DB_PASSWORD=123456
DB_DATABASE=clothes_shop
PORT=8000
```

<h3>API Endpoints</h3>

The root path is `/`

|Endpoint|Method|Data Requied|Response|
|-|-|-|-|
|`/products`|GET|no|no|
|`/orders`|GET|no|no|
|`/orders`|POST|no|no|

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
docker run --name MySQL -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql
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
 
open `http://localhost:8080` and choose a `clothes_shop` database from our created in the preceding, import `clothes_shop.sql` from `./database`
</li>

</ul>
