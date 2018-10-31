CREATE SCHEMA `UWT` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

CREATE TABLE `DISCIPLINES` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(64) NOT NULL
);

CREATE TABLE `ELEMENTS` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(64) NOT NULL,
    `sphere` VARCHAR(32) NOT NULL
);

CREATE TABLE `EXERCISES_ATHLETICS` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `group` VARCHAR(256) NOT NULL,
    `variation` VARCHAR(256) NOT NULL,
    `upper` TINYINT(1) DEFAULT 0,
    `torso` TINYINT(1) DEFAULT 0,
    `lower` TINYINT(1) DEFAULT 0
);

CREATE TABLE `EXERCISES_CALISTHENICS` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `group` VARCHAR(256) NOT NULL,
    `variation` VARCHAR(256) NOT NULL,
    `movement` VARCHAR(128),
    `level` VARCHAR(16) DEFAULT NULL,
    `rep` TINYINT(1) DEFAULT 0,
    `time` TINYINT(1) DEFAULT 0,
    `ground` TINYINT(1) DEFAULT 0,
    `high_bar` TINYINT(1) DEFAULT 0,
    `medium_bar` TINYINT(1) DEFAULT 0,
    `low_bar` TINYINT(1) DEFAULT 0,
    `parallel_bars` TINYINT(1) DEFAULT 0,
    `parallettes` TINYINT(1) DEFAULT 0,
    `swedish_ladder` TINYINT(1) DEFAULT 0,
    `vertical_bar` TINYINT(1) DEFAULT 0,
    `wall` TINYINT(1) DEFAULT 0,
    `rings` TINYINT(1) DEFAULT 0,
    `support` TINYINT(1) DEFAULT 0
);

CREATE TABLE `EXERCISES_CORE` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `group` VARCHAR(256) NOT NULL,
    `variation` VARCHAR(256) NOT NULL,
    `level` VARCHAR(16) DEFAULT NULL,
    `rep` TINYINT(1) DEFAULT 0,
    `time` TINYINT(1) DEFAULT 0,
    `upper` TINYINT(1) DEFAULT 0,
    `lower` TINYINT(1) DEFAULT 0,
    `oblique` TINYINT(1) DEFAULT 0,
    `ground` TINYINT(1) DEFAULT 0,
    `high_bar` TINYINT(1) DEFAULT 0,
    `medium_bar` TINYINT(1) DEFAULT 0,
    `low_bar` TINYINT(1) DEFAULT 0,
    `parallel_bars` TINYINT(1) DEFAULT 0,
    `parallettes` TINYINT(1) DEFAULT 0,
    `swedish_ladder` TINYINT(1) DEFAULT 0,
    `vertical_bar` TINYINT(1) DEFAULT 0,
    `wall` TINYINT(1) DEFAULT 0,
    `rings` TINYINT(1) DEFAULT 0,
    `support` TINYINT(1) DEFAULT 0
);

CREATE TABLE `EXERCISES_PARKOUR` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `group` VARCHAR(256) NOT NULL,
    `variation` VARCHAR(256) NOT NULL,
    `level` VARCHAR(16) DEFAULT NULL
);

