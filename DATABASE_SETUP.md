# Database Setup and User Authentication

## Hardcoded Users Created

The application will automatically create the following users when it starts:

### Admin User
- **Email:** admin@laptopshop.com
- **Password:** admin123
- **Role:** ADMIN
- **Full Name:** Administrator

### Regular Users
1. **Email:** nguyenvan@gmail.com
   - **Password:** user123
   - **Full Name:** Nguyen Van A
   - **Address:** 123 Nguyen Trai, Ha Noi

2. **Email:** tranthi@gmail.com
   - **Password:** user123
   - **Full Name:** Tran Thi B
   - **Address:** 456 Hai Ba Trung, Ha Noi

3. **Email:** levan@gmail.com
   - **Password:** user123
   - **Full Name:** Le Van C
   - **Address:** 789 Le Lai, Ho Chi Minh City

## Database Connection

**Database:** MySQL
- **Host:** localhost:3306
- **Database Name:** laptopshop
- **Username:** root
- **Password:** 123456

## Setup Instructions

### 1. Create Database
```sql
CREATE DATABASE laptopshop CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

### 2. Run the Application
```bash
./mvnw spring-boot:run
```

The application will:
- Automatically create/update tables based on JPA entities
- Insert roles (ADMIN, USER) if they don't exist
- Create hardcoded users with BCrypt encrypted passwords
- Insert sample products, categories, and brands

### 3. Access the Application
- **URL:** http://localhost:8080
- **Admin Login:** http://localhost:8080/login

## Images

Sample product images and brand logos have been created as placeholder files in:
- `/src/main/webapp/resources/client/images/products/`
- `/src/main/webapp/resources/client/images/brands/`

**Note:** These are empty placeholder files. Replace them with actual images for proper display.

## Database Tables Created

1. **users** - User accounts with role assignments
2. **roles** - User roles (ADMIN, USER)
3. **products** - Laptop products
4. **categories** - Product categories
5. **brands** - Laptop brands
6. **cart** - Shopping carts for users
7. **cart_details** - Items in shopping carts
8. **orders** - User orders
9. **order_details** - Items in orders
10. **spring_session** - Spring session storage

## Security Configuration

- Passwords are encrypted using BCrypt
- Session timeout: 30 minutes
- Role-based access control implemented
- JDBC session storage for persistence

## Troubleshooting

If users are not created:
1. Check if MySQL is running
2. Verify database connection details in `application.properties`
3. Drop and recreate the database if needed:
   ```sql
   DROP DATABASE laptopshop;
   CREATE DATABASE laptopshop CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   ```
4. Restart the application