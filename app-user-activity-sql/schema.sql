CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    name TEXT,
    signup_date DATE,
    device_type TEXT
);

CREATE TABLE events (
    event_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    event_type TEXT,
    event_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
