package com.example.service.inter;

import com.example.entity.User;

import java.util.UUID;

public interface UserService {
    void create(User user);
    User findById(UUID id);
    User findByEmail(String email);
    void update(User user);
    void delete(UUID id);
    boolean checkPassword(User user, String rawPassword);
}
