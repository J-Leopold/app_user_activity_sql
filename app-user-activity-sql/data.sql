INSERT INTO users (user_id, name, signup_date, device_type) VALUES
(1, 'Alex', '2024-01-01', 'iOS'),
(2, 'Blake', '2024-01-05', 'Android'),
(3, 'Casey', '2024-01-10', 'Web'),
(4, 'Dana', '2024-01-15', 'iOS');

INSERT INTO events (event_id, user_id, event_type, event_time) VALUES
(1, 1, 'login', '2024-01-01 09:00'),
(2, 1, 'purchase', '2024-01-01 09:30'),
(3, 2, 'login', '2024-01-05 10:00'),
(4, 2, 'logout', '2024-01-05 10:20'),
(5, 4, 'login', '2024-01-15 11:00');


