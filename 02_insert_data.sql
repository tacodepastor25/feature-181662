INSERT INTO data_types_demo (
    name, description, price, discount, available, launch_date, uuid_col, ip_address, mac_address, tags, metadata, coordinates, file_data
) VALUES (
    'Xiaomi RedmiNote',
    'Smarthphone Gama Media',
    2800.00,
    0.10,
    TRUE,
    '2023-04-15',
    '123e4567-e89b-12d3-a456-426614174000',             
    '192.168.0.1',                                     
    '01:10:12:34:56:78',
    ARRAY['Samsung', 'Huawei', 'Apple'],
    '{"brand": "Mac", "Color": "Negro", "Memoria": "Expandible"}',
    '(-100.9847, 22.1498)',                             
    E'\\x42696e61727944617461'                         
),
(
    'Iphone 17',
    'Smarthphone Gama Alta',
    18500.50,
    0.15,
    TRUE,
    '2025-10-01',
    '223e4567-e89b-12d3-a456-426614174001',
    '10.0.0.45',
    '00:1A:2B:3C:4D:5E',
    ARRAY['Samsung', 'Huawei', 'Apple'],
    '{"brand": "CompuMax", "Color": "gris", "Garanmtia": "2 años"}',
    '(-99.1332, 19.4326)',
    E'\\x4C6170746F7042696E617279'                      
);


