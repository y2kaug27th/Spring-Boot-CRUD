DROP TABLE IF EXISTS `books`;
DROP TABLE IF EXISTS `authors`;

CREATE TABLE `authors` (
    `id` BIGINT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45),
    `age` INT
);

CREATE TABLE `books` (
`isbn` VARCHAR(45) PRIMARY KEY,
`title` VARCHAR(100),
`author_id` BIGINT,
FOREIGN KEY (`author_id`) REFERENCES `authors`(`id`) ON DELETE SET NULL
);