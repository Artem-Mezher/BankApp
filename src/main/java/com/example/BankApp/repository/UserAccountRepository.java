package com.example.BankApp.repository;

import com.example.BankApp.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserAccountRepository extends JpaRepository<User, Long> {

    User findByUserId(Long userId);
    User save(User user);
}




