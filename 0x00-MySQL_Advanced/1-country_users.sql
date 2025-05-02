-- 1. In and not out
-- Create table `users` with id, unique email, name, and country enum (US, CO, TN)
CREATE TABLE IF NOT EXISTS users (
  id      INT             NOT NULL AUTO_INCREMENT,
  email   VARCHAR(255)    NOT NULL,
  name    VARCHAR(255),
  country ENUM('US','CO','TN') NOT NULL DEFAULT 'US',
  PRIMARY KEY (id),
  UNIQUE KEY (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

