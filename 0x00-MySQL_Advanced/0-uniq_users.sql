-- 0. We are all unique!
-- Create table `users` with id PK, unique email, and optional name
CREATE TABLE IF NOT EXISTS users (
  id    INT            NOT NULL AUTO_INCREMENT,
  email VARCHAR(255)   NOT NULL,
  name  VARCHAR(255),
  PRIMARY KEY (id),
  UNIQUE KEY (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

