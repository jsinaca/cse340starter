

-- SELECT * FROM account;

INSERT INTO account (
	account_firstname,
    account_lastname,
    account_email,
    account_password) values (
	'Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n'
);

UPDATE account SET account_type = 'Admin' WHERE account_id = 1; 

DELETE FROM account WHERE account_id = 1;

-- SELECT * FROM inventory;

-- SELECT * FROM classification;

UPDATE inventory SET inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior') WHERE inv_make = 'GM' AND inv_model = 'Hummer';

SELECT inv_make, inv_model, classification_name FROM inventory INNER JOIN classification ON classification.classification_id=inventory.classification_id WHERE classification_name ='Sport';

UPDATE inventory SET inv_image=REPLACE(inv_image,'/images/','/images/vehicles/'), inv_thumbnail=REPLACE(inv_thumbnail,'/images/','/images/vehicles/');

