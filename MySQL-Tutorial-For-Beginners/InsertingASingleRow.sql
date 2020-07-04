-- "DEFAULT" to let MySQL handle the auto increment the value

INSERT INTO customers 
VALUES (
	DEFAULT, 
    'John', 
    'Smith', 
    '1990-01-01', 
    NULL,
    'address',
    'city',
    'CA',
    DEFAULT
    );

-- supply column name
INSERT INTO customers (
	first_name,
    last_name,
    birth_date,
    address,
    city,
    state
    )
VALUES (
    'John', 
    'Smith', 
    '1990-01-01', 
    'address',
    'city',
    'CA'
    );
    
-- You could reorder the table

    
    
    
    
    
    
    
    
    