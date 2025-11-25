-- Insert sample products
INSERT INTO products (name, price, quantity, factory, details, image, created_at, updated_at, category_id, brand_id) VALUES
('MacBook Pro 14" M3 Pro', 39990000, 50, 'Apple', 'MacBook Pro 14" with M3 Pro chip, 18GB RAM, 512GB SSD', 'macbook-pro-14-m3.jpg', NOW(), NOW(), 1, 1),
('MacBook Air M2 13"', 28990000, 75, 'Apple', 'MacBook Air 13" with M2 chip, 8GB RAM, 256GB SSD', 'macbook-air-m2-13.jpg', NOW(), NOW(), 1, 1),
('Dell XPS 15 9530', 45990000, 30, 'Dell', 'Dell XPS 15 with Intel Core i7-13700H, 16GB RAM, 512GB SSD, RTX 4060', 'dell-xps-15.jpg', NOW(), NOW(), 1, 2),
('HP Spectre x360 14', 36990000, 40, 'HP', 'HP Spectre x360 2-in-1 with Intel Core i7, 16GB RAM, 1TB SSD', 'hp-spectre-x360.jpg', NOW(), NOW(), 1, 3),
('Lenovo ThinkPad X1 Carbon', 42990000, 35, 'Lenovo', 'ThinkPad X1 Carbon with Intel Core i7, 16GB RAM, 1TB SSD', 'thinkpad-x1-carbon.jpg', NOW(), NOW(), 1, 4),
('ASUS ROG Zephyrus G16', 49990000, 25, 'ASUS', 'ROG Zephyrus G16 gaming laptop with Ryzen 9, 32GB RAM, 1TB SSD, RTX 4080', 'rog-zephyrus-g16.jpg', NOW(), NOW(), 2, 5),
('Acer Predator Helios 16', 44990000, 30, 'Acer', 'Predator Helios 16 with Intel Core i9, 32GB RAM, 1TB SSD, RTX 4070', 'predator-helios-16.jpg', NOW(), NOW(), 2, 6),
('MSI Stealth 16 Studio', 52990000, 20, 'MSI', 'Stealth 16 Studio with Intel Core i9, 32GB RAM, 2TB SSD, RTX 4080', 'msi-stealth-16.jpg', NOW(), NOW(), 2, 7);

-- Insert sample categories
INSERT INTO categories (name, description, created_at, updated_at) VALUES
('Laptop', 'Various types of laptops for different purposes', NOW(), NOW()),
('Gaming Laptop', 'High-performance laptops for gaming', NOW(), NOW()),
('Business Laptop', 'Laptops designed for business and productivity', NOW(), NOW());

-- Insert sample brands
INSERT INTO brands (name, logo, created_at, updated_at) VALUES
('Apple', 'apple-logo.png', NOW(), NOW()),
('Dell', 'dell-logo.png', NOW(), NOW()),
('HP', 'hp-logo.png', NOW(), NOW()),
('Lenovo', 'lenovo-logo.png', NOW(), NOW()),
('ASUS', 'asus-logo.png', NOW(), NOW()),
('Acer', 'acer-logo.png', NOW(), NOW()),
('MSI', 'msi-logo.png', NOW(), NOW()),
('Gigabyte', 'gigabyte-logo.png', NOW(), NOW());