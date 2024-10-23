package com.example.service.impl;

import com.example.entity.User;
import com.example.repository.UserRepository;
import com.example.service.inter.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class UserServiceImpl implements UserService {

        @Autowired
        private UserRepository userRepository;

        @Override
        public User create(User user) {
            return userRepository.save(user);
        }

        @Override
        public User update(User user) {
            return userRepository.save(user);
        }

        @Override
        public void delete(UUID id) {
            userRepository.deleteById(id);
        }

        @Override
        public User findById(UUID id) {
            return userRepository.findById(id).orElse(null);
        }

        @Override
        public List<User> findAll() {
            return userRepository.findAll();
        }
    }