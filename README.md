# Clothes-Shop-Backend

<h3>Introduction</h3>

You can import a database from `./database/clothes_shop.sql` into your MySQL and Postman Collections from `./cs.postman_collection` It might be useful for you. But if your device does not already have MySQL and phpMyAdmin, you can follow the instructions at the bottom to install them using Docker.

<details><summary><h3>Getting started</h3></summary>
<p>
<ul>
<li>
 
<strong>Install</strong>
 
```
$ git clone https://github.com/santichoks/Clothes-Shop-Backend.git
$ cd Clothes-Shop-Backend
$ npm install
```
</li>
 
<li>
 
<strong>Setting up your local environment</strong>
 
create an `.env` file in the application root directory.
 
```
DB_HOST=localhost
DB_USERNAME=root
DB_PASSWORD=123456
DB_DATABASE=clothes_shop
PORT=8000
```
</li>
 
</ul>
</p>
</details>

<details><summary><h3>API Endpoints</h3></summary>
<p>
The root path is `http://localhost:8000/`, The port can be changed in the `.env` file. 

|Endpoint|Method|Optional Params|Example|
|:-:|:-:|-|-|
|`/products`|GET|`gender [Men, Women]`|`http://localhost:8000/products?gender=Women`|
||||`http://localhost:8000/products?gender=Men,Women`|
|||`size [XS, S, M, L, XL]`|`http://localhost:8000/products?size=M`|
||||`http://localhost:8000/products?size=XS,S,M`|
|||`style [Red, Black, Batman, Spiderman]`|`http://localhost:8000/products?style=Red`|
||||`http://localhost:8000/products?style=Red,Spiderman,Batman`|

<strong>Example :</strong> `http://localhost:8000/products?gender=Women&size=XS,S,M`

```
{
    "status": "successfully.",
    "total": 9,
    "results": [
        {
            "product_id": 6,
            "gender": "Women",
            "style": "Plain color / Black",
            "size": "XS",
            "price": 290
        },
        {
            "product_id": 7,
            "gender": "Women",
            "style": "Plain color / Black",
            "size": "S",
            "price": 290
        },
        ...
        ...
        ...
    ]    
```
 
</p>
</details>

<details><summary><h3>Install the Docker MySQL and phpMyAdmin Container</h3></summary>
<p>
<ul>
 
<li>

<strong>Pull image</strong>
<p><a href="https://hub.docker.com/_/mysql">MySQL Docker Image</a></p>

```
$ docker pull mysql
```
<p><a href="https://hub.docker.com/_/phpmyadmin">phpMyAdmin Docker Image</a></p>

```
$ docker pull phpmyadmin
```
</li>
 
<li>

<strong>Run the container</strong>

```
$ docker run --name MySQL -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql
```

```
$ docker run --name phpMyAdmin -d --link MySQL:db -p 8080:80 phpmyadmin
```
</li>
 
<li>

<strong>Create a database</strong>

```
$ docker exec -it MySQL bash
```

```
$ mysql -u root -p
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
</p>
</details>
