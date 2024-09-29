CREATE TABLE _user
(
    id         BIGINT PRIMARY KEY,
    created_by VARCHAR(255),
    created_at TIMESTAMP,
    updated_by VARCHAR(255),
    updated_at TIMESTAMP,
    name       VARCHAR(255),
    lastname   VARCHAR(255),
    email      VARCHAR(255),
    CONSTRAINT unique_email UNIQUE (email)
);

CREATE TABLE task
(
    id              BIGINT PRIMARY KEY,
    created_by      VARCHAR(255),
    created_at      TIMESTAMP,
    updated_by      VARCHAR(255),
    updated_at      TIMESTAMP,
    title           VARCHAR(255),
    description     TEXT,
    status          VARCHAR(50) DEFAULT 'TO_DO',
    completion_date DATE,
    user_id         BIGINT,
    CONSTRAINT fk_use_tas FOREIGN KEY (user_id) REFERENCES _user (id) ON DELETE SET NULL
);