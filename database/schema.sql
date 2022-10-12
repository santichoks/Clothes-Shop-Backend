CREATE TABLE `products` (
  `product_id` int PRIMARY KEY AUTO_INCREMENT,
  `gender` ENUM ('Men', 'Women'),
  `style` varchar(255),
  `size` ENUM ('XS', 'S', 'M', 'L', 'XL'),
  `price` int
);

CREATE TABLE `orders` (
  `order_id` int PRIMARY KEY,
  `product_id` int,
  `status` ENUM ('placed_order', 'paid', 'shipping_out', 'completed') DEFAULT "placed_order",
  `order_date` datetime DEFAULT (now()),
  `paid_date` datetime,
  `address` varchar(255)
);

ALTER TABLE `orders` ADD FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
