SET NAMES utf8mb4 COLLATE utf8mb4_unicode_ci;
ALTER DATABASE clush_db CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

DROP USER IF EXISTS 'clush'@'%';
CREATE USER 'clush'@'%' IDENTIFIED WITH caching_sha2_password BY 'clush';
GRANT ALL PRIVILEGES ON clush_db.* TO 'clush'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS clush_db;
USE clush_db;

CREATE TABLE IF NOT EXISTS todo (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    completed BOOLEAN NOT NULL DEFAULT false,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS calendar_event (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    all_day BOOLEAN NOT NULL DEFAULT false,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
