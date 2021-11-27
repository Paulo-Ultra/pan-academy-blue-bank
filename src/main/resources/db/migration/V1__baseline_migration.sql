CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` bigint PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birth_date` date NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `email` varchar(255) UNIQUE,
  `phone` varchar(255),
  `cellphone` varchar(255),
  `type` ENUM ('PF', 'PJ') NOT NULL,
  `registration` varchar(255) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS `addresses` (
  `address_id` bigint PRIMARY KEY AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `address_number` varchar(255),
  `city` varchar(255) NOT NULL,
  `state` char(2) NOT NULL,
  `client_id` bigint,
  FOREIGN KEY (`client_id`) 
    REFERENCES `clients` (`client_id`)
);

CREATE TABLE IF NOT EXISTS `accounts` (
  `account_id` bigint PRIMARY KEY AUTO_INCREMENT,
  `agency_number` bigint NOT NULL,
  `account_number` bigint NOT NULL,
  `account_digit` char(1) NOT NULL,
  `balance` decimal(10, 2) NOT NULL DEFAULT 0,
  `type` ENUM ('CC', 'CP', 'CS') NOT NULL,
  `status` ENUM ('A', 'B', 'C') NOT NULL,
  `client_id` bigint NOT NULL,
  INDEX (`agency_number`,`account_number`),
  FOREIGN KEY (`client_id`) 
    REFERENCES `clients` (`client_id`)
);

CREATE TABLE IF NOT EXISTS `transaction_type` (
  `type_id` int PRIMARY KEY AUTO_INCREMENT,
  `type` ENUM ('C', 'D') NOT NULL,
  `name` varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS `transactions` (
  `transaction_id` bigint PRIMARY KEY AUTO_INCREMENT,
  `origin_account` bigint NOT NULL,
  `destination_account` bigint NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  FOREIGN KEY (`origin_account`) 
    REFERENCES `accounts` (`account_id`),
  FOREIGN KEY (`destination_account`) 
    REFERENCES `accounts` (`account_id`),
  FOREIGN KEY (`type_id`) 
    REFERENCES `transaction_type` (`type_id`)
);

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` bigint PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(255) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `client_id` bigint,
  `role` ENUM ('A', 'U') NOT NULL,
  FOREIGN KEY (`client_id`) 
    REFERENCES `clients` (`client_id`)
);

INSERT IGNORE INTO `users` (`user_id`, `username`, `password`, `role`) values (1, 'admin', '$2a$10$hlUaPFEckFJCWKH9rLnuMuhldK3PVisBFJHmZ7H88hKCOpYlm7UIa', 'A');