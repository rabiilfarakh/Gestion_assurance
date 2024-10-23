package com.example.service.inter;

import com.example.entity.User;

import java.util.List;
import java.util.UUID;

public interface UserService {
    User create(User user);
    User update(User user);
    void delete(UUID id);
    User findById(UUID id);
    List<User> findAll();
}
