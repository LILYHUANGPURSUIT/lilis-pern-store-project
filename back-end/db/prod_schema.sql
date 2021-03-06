DROP TABLE IF EXISTS clocks;

CREATE TABLE clocks (
    id SERIAL PRIMARY KEY, 
    name TEXT NOT NULL,
    description TEXT,
    image TEXT,
    dimensions VARCHAR(255),
    color VARCHAR(255),
    material VARCHAR(255),
    price INTEGER DEFAULT 0,
    rating NUMERIC,
    CHECK (rating >=0 AND rating <=5),
    featured BOOLEAN,
    stock INTEGER DEFAULT 0,
    quantity INTEGER DEFAULT 1
);