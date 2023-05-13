CREATE TABLE user_accounts (
    user_id BIGINT PRIMARY KEY,
    balance DOUBLE PRECISION NOT NULL
);


CREATE TABLE operations (
  operation_id BIGSERIAL PRIMARY KEY,
  user_id BIGINT REFERENCES user_accounts(user_id),
  operation_type INTEGER NOT NULL,
  amount INTEGER NOT NULL,
  operation_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE transfers (
    id SERIAL PRIMARY KEY,
    sender_id BIGINT NOT NULL,
    recipient_id BIGINT NOT NULL,
    amount DOUBLE PRECISION NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (sender_id) REFERENCES user_accounts (user_id),
    FOREIGN KEY (recipient_id) REFERENCES user_accounts (user_id)
);
