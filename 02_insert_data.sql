INSERT INTO data_types_demo 
(name, description, price, discount, available, launch_date, ip_address, mac_address, tags, metadata, coordinates, file_data)
VALUES 
(
    'Xiaomi RedmiNote', 
    'Smarthphone Gama Media', 
    2800.00, 
    0.10, 
    TRUE, 
    '2023-04-15', 
    '192.168.0.001', 
    '01:10:12:34:56:78', 
    ARRAY['Samsung', 'Huawei', 'Apple'], 
    '{"brand": "Mac", "Color": "Negro", "Memoria": "Expandible"}', 
    ST_SetSRID(ST_MakePoint(-100.9847, 22.1498), 4326), 
    decode('42696e61727944617461', 'hex')  -- "BinaryData" en hex
);
