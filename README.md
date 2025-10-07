# T41A-P07

## 1. Crea una tabla ´data_types_demo´ con los sigueintes tipos de datos:
```sql
CREATE TABLE data_types_demo (
    id                                           -- Integer auto-increment
    name                                         -- Variable-length string NOT NULL
    description                                  -- Large text
    price                                        -- Fixed precision number
    discount                                     -- Floating point
    available                                    -- Boolean DEFAULT TRUE
    created_at                                   -- Date and time DEFAULT NOW()
    launch_date                                  -- Date only
    uuid_col                                     -- UUID
    ip_address                                   -- IP address
    mac_address                                  -- MAC address
    tags                                         -- Array of text
    metadata                                     -- JSON data
    coordinates                                  -- Geometric type
    file_data                                    -- Binary data
);
```

## 2. Inserta datos de muestra

## 3. Realiza las sigueintes consultas:

´´´sql
-- Obtén todos los productos disponibles con información de marca (brand) en la columns metadata

-- Encuentra los artículos lanzads después de una fecha específica

-- Busca por tag

-- Muestra IP y dirección MAC

-- Muestra coordenadas
´´´
