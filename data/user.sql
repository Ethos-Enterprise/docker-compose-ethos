CREATE TABLE users (
    id uuid NOT NULL,
    email varchar(300) NULL,
    "password" varchar(300) NULL,
    user_role varchar(50) NULL,
    created_at timestamp NULL,
    updated_at timestamp NULL,
    CONSTRAINT users_pkey PRIMARY KEY (id)
);
truncate table users;
INSERT INTO users (id, email, "password", user_role, created_at, updated_at) values
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'admin@ethos', '$2a$12$YLPNQIUU0IgLCHCZcWlJputdHv/NUDTW0clP4Fyivtf0NV81BZ0mm', 'ADMIN', '2021-01-01 00:00:00', '2021-01-01 00:00:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'user@ethos', '$2a$12$YLPNQIUU0IgLCHCZcWlJputdHv/NUDTW0clP4Fyivtf0NV81BZ0mm', 'USER', '2021-01-01 00:00:00', '2021-01-01 00:00:00');