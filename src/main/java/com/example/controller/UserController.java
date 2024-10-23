package com.example.controller;

import com.example.entity.User;
import com.example.service.inter.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public String getAllUsers(Model model) {
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "userList";
    }

    @GetMapping("/{id}")
    public String getUserById(@PathVariable UUID id, Model model) {
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "userDetail";
    }

    @GetMapping("/new")
    public String createUserForm(Model model) {
        model.addAttribute("user", new User());
        return "userForm";
    }

    @PostMapping
    public String createUser(@ModelAttribute User user) {
        userService.create(user);
        return "redirect:/users";
    }

    @GetMapping("/edit/{id}")
    public String editUserForm(@PathVariable UUID id, Model model) {
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "user-form";
    }

    @PostMapping("/update/{id}")
    public String updateUser(@PathVariable UUID id, @ModelAttribute User user) {
        user.setId(id);
        userService.update(user);
        return "redirect:/users";
    }

    @GetMapping("/delete/{id}")
    public String deleteUser(@PathVariable UUID id) {
        userService.delete(id);
        return "redirect:/users";
    }
}
