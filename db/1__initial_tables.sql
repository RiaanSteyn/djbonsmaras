CREATE TABLE `djbonsmaras`.`admin` (
  `id` BIGINT AUTO_INCREMENT,
  `user_name` VARCHAR(45) NULL,
  `user_username` VARCHAR(45) NULL,
  `user_password` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE `djbonsmaras`.`for_sale` (
  `id` BIGINT AUTO_INCREMENT,
  `title` VARCHAR(80) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `price` FLOAT(10,2) NULL,
  `photos` BLOB NULL,
  `admin_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`admin_id`) REFERENCES `admin`(`id`));
  
CREATE TABLE `djbonsmaras`.`sale_history` (
  `id` BIGINT AUTO_INCREMENT,
  `for_sale_id` BIGINT NOT NULL,
  `price_sold` FLOAT(10,2) NULL,
  `name` VARCHAR(45) NULL,
  `contact_details` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`for_sale_id`) REFERENCES `for_sale`(`id`));

CREATE TABLE `djbonsmaras`.`news_feed` (
  `id` BIGINT AUTO_INCREMENT,
  `title` VARCHAR(80) NOT NULL,
  `content` VARCHAR(500) NOT NULL,
  `admin_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`admin_id`) REFERENCES `admin`(`id`));