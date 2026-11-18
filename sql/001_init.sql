DROP TABLE IF EXISTS bank_accounts;
DROP TABLE IF EXISTS atms;
DROP TABLE IF EXISTS characters;
CREATE TABLE  characters (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    cash BIGINT UNSIGNED NOT NULL DEFAULT 0,
    PRIMARY KEY(id)
);

CREATE TABLE atms (
    atm_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    atm_name VARCHAR(40) NOT NULL,
    x FLOAT NOT NULL,
    y FLOAT NOT NULL,
    z FLOAT NOT NULL,
    atm_balance BIGINT UNSIGNED NOT NULL,
    PRIMARY KEY(atm_id)
);

CREATE TABLE bank_accounts (
    bill_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    character_id INT UNSIGNED NOT NULL,
    balance BIGINT UNSIGNED NOT NULL DEFAULT 0,
    bill_type VARCHAR(20) NOT NULL,
    FOREIGN KEY (character_id) REFERENCES characters (id) ON DELETE RESTRICT,
    UNIQUE (character_id, bill_type),
    PRIMARY KEY(bill_id)
);