CREATE TABLE IF NOT EXISTS users (
    user_id UNSINGED BIGINT PRIMARY KEY,
    username VARCHAR(256) NOT NULL
)

CREATE TABLE IF NOT EXISTS users_passwords (
    of_user_id UNSINGED BIGINT PRIMARY KEY,
    hash VARCHAR(128) NOT NULL,
    FOREIGN KEY (of_user_id) REFER users(user_id)
)

CREATE TABLE IF NOT EXISTS download_tasks (
    task_id UNSINGED BIGINT PRIMARY KEY,
    of_user_id UNSINGED BIGINT,
    download_type SMALLINT NOT NULL,
    download_status SMALLINT NOT NULL,
    url TEXT NOT NULL,
    metadata TEXT NOT NULL,
    FOREIGN KEY (of_user_id) REFER users(user_id)
)