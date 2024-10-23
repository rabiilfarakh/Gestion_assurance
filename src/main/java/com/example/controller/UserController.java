package com.example.controller;

import com.example.entity.User;
import com.example.service.inter.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping
    public String registerFront() {
        return "register";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/index")
    public String home() {
        return "index";
    }

    @PostMapping("register")
    public String registerUser(@ModelAttribute User user) {
        userService.create(user);
        return "redirect:login";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam String email, @RequestParam String password) {
        User user = userService.findByEmail(email);
        if (user != null && userService.checkPassword(user, password)) {
            return "redirect:index";
        } else {
            return "redirect:/login?error";
        }
    }

    @GetMapping("/{id}")
    public String getUserById(@PathVariable UUID id, Model model) {
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "userDetail";
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
