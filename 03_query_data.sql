-- Obtiene todos los productos disponibles con información de marca "brand" en la columna 
SELECT * FROM data_types_demo WHERE available = TRUE  AND metadata ? 'brand';

-- Encuentra los artículos lanzados después de una fecha específica
SELECT * FROM data_types_demo WHERE launch_date > '2025-10-15';

-- Busca por tag
SELECT * FROM data_types_demo WHERE 'promoción' = ANY(tags);

-- Muestra IP y dirección MAC
SELECT name, ip_address, mac_address FROM data_types_demo;

-- Muestra coordenadas
SELECT name, coordinates FROM data_types_demo;
