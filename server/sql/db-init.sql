CREATE TABLE expenses (
    id SERIAL PRIMARY KEY,
    amount decimal NOT NULL,
    currency varchar(50) NOT NULL,
    category varchar(50) NOT NULL,
    created_on TIMESTAMP NOT NULL,
    description varchar(255)
);

ALTER TABLE expenses ALTER COLUMN created_on SET DEFAULT now();

INSERT INTO expenses (amount, currency, category, created_on, description)
VALUES (25.99, 'USD', 'Food', NOW(), 'Dinner at a restaurant');

INSERT INTO expenses (amount, currency, category, created_on, description)
VALUES (50.00, 'EUR', 'Transportation', NOW(), 'Metro fare');

INSERT INTO expenses (amount, currency, category, created_on, description)
VALUES (12.50, 'GBP', 'Entertainment', NOW(), 'Movie tickets');

INSERT INTO expenses (amount, currency, category, created_on, description)
VALUES (10.99, 'USD', 'Shopping', NOW(), 'Online purchase');

INSERT INTO expenses (amount, currency, category, description)
VALUES (75.25, 'AUD', 'Travel', 'Airfare');



