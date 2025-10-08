SELECT id, name, metadata->>'brand' AS brand
FROM data_types_demo
WHERE metadata ? 'brand';

SELECT id, name, launch_date
FROM data_types_demo
WHERE launch_date > '2023-04-25';

SELECT id, name, tags
FROM data_types_demo
WHERE 'Samsung' = ANY(tags);

SELECT id, name, ip_address, mac_address
FROM data_types_demo;

SELECT 
    id, 
    name, 
    ST_X(coordinates) AS longitude, 
    ST_Y(coordinates) AS latitude
FROM data_types_demo;
