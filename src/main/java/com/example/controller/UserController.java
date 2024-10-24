package com.example.controller;

import com.example.entity.User;
import com.example.service.inter.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/")
public class UserController {

    private static final String LOGIN_VIEW = "login";
    private static final String REGISTER_VIEW = "register";
    private static final String INDEX_VIEW = "index";
    private static final String REDIRECT_LOGIN = "redirect:/login";
    private static final String REDIRECT_INDEX = "redirect:/index";
    private static final String ERROR_PARAM = "?error";

    @Autowired
    private UserService userService;

    @GetMapping
    public String showRegisterForm() {
        return REGISTER_VIEW;
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return LOGIN_VIEW;
    }

    @GetMapping("/index")
    public String showHomePage() {
        return INDEX_VIEW;
    }

    @PostMapping("/register")
    public String registerUser(@ModelAttribute User user) {
        userService.create(user);
        return REDIRECT_LOGIN;
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam String email, @RequestParam String password, HttpSession session) {
        User user = userService.findByEmail(email);
        if (user != null && userService.checkPassword(user, password)) {
            session.setAttribute("user", user);
            return REDIRECT_INDEX;
        } else {
            return REDIRECT_LOGIN + ERROR_PARAM;
        }
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return REDIRECT_LOGIN;
    }


}
