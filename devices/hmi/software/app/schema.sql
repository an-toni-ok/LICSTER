DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS ipaddr;
DROP TABLE IF EXISTS snort;

CREATE TABLE user(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  user_role TEXT NOT NULL,
  first_login INTEGER NOT NULL,
  email TEXT
);
CREATE TABLE ipaddr(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  ipaddress TEXT NOT NULL,
  userid INTEGER NOT NULL,
  FOREIGN KEY(userid) REFERENCES user(id)
);
CREATE TABLE snort(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  snort_type TEXT NOT NULL,
  snort_classification TEXT NOT NULL,
  snort_priority INTEGER NOT NULL,
  snort_datetime TEXT NOT NULL
)