CREATE TABLE users (
  uid INT NOT NULL PRIMARY KEY,
  username VARCHAR(255) UNIQUE,
  email VARCHAR(255),
  email_verified BIT,
  date_created DATE,
  last_login DATE
);


CREATE TABLE posts (
  pid INT NOT NULL PRIMARY KEY,
  title VARCHAR(255),
  body VARCHAR,
  user_id INT,
  author VARCHAR,
  date_created TIMESTAMP
  FOREIGN KEY (user_id) REFERENCES users(uid),
  FOREIGN KEY (author) REFERENCES users(username)
);

CREATE TABLE comments (
  cid INT NOT NULL PRIMARY KEY,
  comment VARCHAR(255),
  author VARCHAR,
  user_id INT,
  post_id INT,
  date_created TIMESTAMP,
  FOREIGN KEY (author) REFERENCES users(username),
  FOREIGN KEY (user_id) REFERENCES users(uid),
  FOREIGN KEY (post_id) REFERENCES posts(pid)
);
