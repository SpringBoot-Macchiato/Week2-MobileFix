-- ============================================
  -- Insert Users (password: password123 for all)
  -- BCrypt hash: $2a$10$slYQmyNdGzTn7ZLBXBChFOC9f6kFjAqPhccnP6DxlWXx2lPk1C3G6
  -- ============================================

  INSERT INTO users (username, password, role, full_name, email, enabled)
  VALUES ('user', '$2a$10$slYQmyNdGzTn7ZLBXBChFOC9f6kFjAqPhccnP6DxlWXx2lPk1C3G6', 'USER', 'John Doe', 'user@mobilefix.com', true);

  INSERT INTO users (username, password, role, full_name, email, enabled)
  VALUES ('tech', '$2a$10$slYQmyNdGzTn7ZLBXBChFOC9f6kFjAqPhccnP6DxlWXx2lPk1C3G6', 'TECH', 'Jane Smith', 'tech@mobilefix.com', true);

  INSERT INTO users (username, password, role, full_name, email, enabled)
  VALUES ('admin', '$2a$10$slYQmyNdGzTn7ZLBXBChFOC9f6kFjAqPhccnP6DxlWXx2lPk1C3G6', 'ADMIN', 'Admin User', 'admin@mobilefix.com', true);

  INSERT INTO users (username, password, role, full_name, email, enabled)
  VALUES ('maria', '$2a$10$slYQmyNdGzTn7ZLBXBChFOC9f6kFjAqPhccnP6DxlWXx2lPk1C3G6', 'USER', 'Maria Garcia', 'maria@mobilefix.com', true);

  INSERT INTO users (username, password, role, full_name, email, enabled)
  VALUES ('carlos', '$2a$10$slYQmyNdGzTn7ZLBXBChFOC9f6kFjAqPhccnP6DxlWXx2lPk1C3G6', 'TECH', 'Carlos Rodriguez', 'carlos@mobilefix.com', true);

  -- ============================================
  -- Insert Devices
  -- ============================================

  INSERT INTO devices (brand, model, serial_number)
  VALUES ('Samsung', 'Galaxy S21', 'SN001-SAMSUNG-S21');

  INSERT INTO devices (brand, model, serial_number)
  VALUES ('Apple', 'iPhone 13 Pro', 'SN002-APPLE-IP13');

  INSERT INTO devices (brand, model, serial_number)
  VALUES ('Xiaomi', 'Redmi Note 10', 'SN003-XIAOMI-RN10');

  INSERT INTO devices (brand, model, serial_number)
  VALUES ('Samsung', 'Galaxy A52', NULL);

  INSERT INTO devices (brand, model, serial_number)
  VALUES ('Apple', 'iPhone 12', NULL);

  INSERT INTO devices (brand, model, serial_number)
  VALUES ('Motorola', 'Moto G Power', 'SN006-MOTO-GP');

  -- ============================================
  -- Insert Repair Orders
  -- ============================================

  INSERT INTO repair_orders (customer_id, device_id, assigned_tech_id, issue_description, status, tech_notes, created_at, updated_at)
  VALUES (1, 1, NULL, 'Screen is cracked and not responding to touch', 'PENDING', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

  INSERT INTO repair_orders (customer_id, device_id, assigned_tech_id, issue_description, status, tech_notes, created_at, updated_at)
  VALUES (4, 2, 2, 'Battery drains very quickly, needs replacement', 'IN_PROGRESS', 'Ordered replacement battery, arrives tomorrow', CURRENT_TIMESTAMP,
  CURRENT_TIMESTAMP);

  INSERT INTO repair_orders (customer_id, device_id, assigned_tech_id, issue_description, status, tech_notes, created_at, updated_at)
  VALUES (1, 3, 5, 'Camera not working properly, photos are blurry', 'READY', 'Replaced camera module, tested successfully', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

  INSERT INTO repair_orders (customer_id, device_id, assigned_tech_id, issue_description, status, tech_notes, created_at, updated_at)
  VALUES (4, 4, 2, 'Speaker volume is too low or distorted', 'DELIVERED', 'Cleaned speaker grille and replaced speaker', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

  INSERT INTO repair_orders (customer_id, device_id, assigned_tech_id, issue_description, status, tech_notes, created_at, updated_at)
  VALUES (1, 5, NULL, 'Phone will not charge, charging port seems damaged', 'PENDING', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

  INSERT INTO repair_orders (customer_id, device_id, assigned_tech_id, issue_description, status, tech_notes, created_at, updated_at)
  VALUES (4, 6, NULL, 'Screen replacement needed urgently', 'CANCELED', 'Customer cancelled - found cheaper alternative', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

  INSERT INTO repair_orders (customer_id, device_id, assigned_tech_id, issue_description, status, tech_notes, created_at, updated_at)
  VALUES (1, 1, 5, 'Water damage, phone will not turn on at all', 'IN_PROGRESS', 'Disassembled and drying components', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

  INSERT INTO repair_orders (customer_id, device_id, assigned_tech_id, issue_description, status, tech_notes, created_at, updated_at)
  VALUES (4, 3, NULL, 'Back glass is shattered, needs replacement', 'PENDING', NULL, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
