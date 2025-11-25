package vn.ndkien.laptopshop.config;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;
import vn.ndkien.laptopshop.domain.Role;
import vn.ndkien.laptopshop.domain.User;
import vn.ndkien.laptopshop.repository.RoleRepository;
import vn.ndkien.laptopshop.repository.UserRepository;

@Configuration
public class DataInitializer {

    @Bean
    CommandLineRunner initDatabase(RoleRepository roleRepository,
                                 UserRepository userRepository,
                                 PasswordEncoder passwordEncoder) {
        return args -> {
            // Check if roles already exist
            if (roleRepository.count() == 0) {
                // Create roles
                Role adminRole = new Role();
                adminRole.setName("ADMIN");
                adminRole.setDescription("Administrator role with full privileges");
                roleRepository.save(adminRole);

                Role userRole = new Role();
                userRole.setName("USER");
                userRole.setDescription("Regular user role");
                roleRepository.save(userRole);

                System.out.println("Created roles: ADMIN, USER");
            }

            // Check if users already exist
            if (userRepository.count() == 0) {
                // Get roles
                Role adminRole = roleRepository.findByName("ADMIN");
                Role userRole = roleRepository.findByName("USER");

                // Create admin user
                User admin = new User();
                admin.setEmail("admin@laptopshop.com");
                admin.setPassword(passwordEncoder.encode("admin123"));
                admin.setFullname("Administrator");
                admin.setAddress("Admin Office");
                admin.setPhone("0123456789");
                admin.setRole(adminRole);
                userRepository.save(admin);

                // Create regular users
                User user1 = new User();
                user1.setEmail("nguyenvan@gmail.com");
                user1.setPassword(passwordEncoder.encode("user123"));
                user1.setFullname("Nguyen Van A");
                user1.setAddress("123 Nguyen Trai, Ha Noi");
                user1.setPhone("0987654321");
                user1.setRole(userRole);
                userRepository.save(user1);

                User user2 = new User();
                user2.setEmail("tranthi@gmail.com");
                user2.setPassword(passwordEncoder.encode("user123"));
                user2.setFullname("Tran Thi B");
                user2.setAddress("456 Hai Ba Trung, Ha Noi");
                user2.setPhone("0912345678");
                user2.setRole(userRole);
                userRepository.save(user2);

                User user3 = new User();
                user3.setEmail("levan@gmail.com");
                user3.setPassword(passwordEncoder.encode("user123"));
                user3.setFullname("Le Van C");
                user3.setAddress("789 Le Lai, Ho Chi Minh City");
                user3.setPhone("0934567890");
                user3.setRole(userRole);
                userRepository.save(user3);

                System.out.println("Created admin user: admin@laptopshop.com / admin123");
                System.out.println("Created 3 regular users with password: user123");
                System.out.println("Emails: nguyenvan@gmail.com, tranthi@gmail.com, levan@gmail.com");
            }
        };
    }
}