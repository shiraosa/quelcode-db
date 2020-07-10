CREATE TABLE `users`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(100) NOT NULL,
    `email_address` VARCHAR(100) NOT NULL,
    `password` VARCHAR(100) NOT NULL,
    `self_introduction` VARCHAR(1000) ,
    `work_phone_number` VARCHAR(13) ,
    `personal_phone_number` VARCHAR(13) ,
    `is_deleted` TINYINT(1) DEFAULT 0 NOT NULL,
    `created_at` DATETIME NOT NULL,
    `updated_at` DATETIME NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `join_histories`(
    `chatroom_id` INT(11) NOT NULL,
    `user_id` INT(11) NOT NULL,
    `joined_at` DATETIME NOT NULL,
    PRIMARY KEY (`chatroom_id`,`user_id`)
);

CREATE TABLE `chats`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `content` VARCHAR(1000) NOT NULL,
    `file_name` VARCHAR(100),
    `chatroom_id` INT(11) NOT NULL,
    `is_deleted` TINYINT(1) DEFAULT 0 NOT NULL,
    `created_at` DATETIME NOT NULL,
    `created_by` INT(11) NOT NULL,
    `updated_at` DATETIME NOT NUll,
    `updated_by` INT(11) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `tasks`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `content` VARCHAR(1000) NOT NULL,
    `person_in_charge` INT(11) NOT NULL,
    `due_date` DATETIME,
    `is_completed` TINYINT(1) DEFAULT 0 NOT NULL,
    `chatroom_id` INT(11) NOT NULL,
    `is_deleted` TINYINT(1) DEFAULT 0 NOT NULL,
    `created_at` DATETIME NOT NULL,
    `created_by` INT(11) NOT NULL,
    `updated_at` DATETIME NOT NUll,
    `updated_by` INT(11) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `chatrooms`(
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `room_name` VARCHAR(100) NOT NULL,
    `overview` VARCHAR(1000),
    `is_attached_file` TINYINT(1) DEFAULT 0 NOT NULL,
    `is_direct_chat` TINYINT(1) DEFAULT 0 NOT NULL,
    `is_deleted` TINYINT(1) DEFAULT 0 NOT NULL,
    `created_at` DATETIME NOT NULL,
    `created_by` INT(11) NOT NULL,
    `updated_at` DATETIME NOT NUll,
    `updated_by` INT(11) NOT NULL,
    PRIMARY KEY (`id`)
);
