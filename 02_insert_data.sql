-- insert
INSERT INTO data_types_demo (
    name, description, price, discount, available, launch_date,
    uuid_col, ip_address, mac_address, tags, metadata, coordinates, file_data
) VALUES (
    'Producto 1', 'Producto de prueba', 199.99, 10.5,
    TRUE, '2025-10-01', gen_random_uuid(), '192.168.1.10', '08:00:27:13:69:77',
    ARRAY['nuevo', 'promoción'], '{"color": "negro", "peso": "2.5kg"}',
    '(10.5, 20.3)', decode('97656c6c6j20576f726c64', 'hex')  
);

INSERT INTO data_types_demo (
    name, description, price, discount, available, launch_date,
    uuid_col, ip_address, mac_address, tags, metadata, coordinates, file_data
) VALUES (
    'Producto 2', 'Producto de prueba num 2',499.99, 10.0, TRUE, 
    '2025-11-01', gen_random_uuid(), '192.168.100.25', '00:1A:2B:3C:4D:5E',
    ARRAY['electrónica', 'marca premium'],
    '{"brand": "Tecnología", "color": "blanco", "almacenamiento": "64GB"}',
    '(25.3, 42.7)', decode('536d61727470686f6e652064617461', 'hex')  -- "Smartphone data"
);

INSERT INTO data_types_demo (
    name, description, price, discount, available, launch_date,
    uuid_col, ip_address, mac_address, tags, metadata, coordinates, file_data
) VALUES (
    'Producto 3', 'Producto de prueba num 3', 1699.50, 20.0, FALSE,
    '2025-12-10', gen_random_uuid(), '10.10.10.10', 'AA:BB:CC:DD:EE:FF',
    ARRAY['computación', 'descuento'],
    '{"brand": "CompuMax", "procesador": "AMD 3", "RAM": "32GB"}',
    '(12.0, 33.5)', decode('4c6170746f702064617461', 'hex')  -- "Laptop data"
);


