<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.entity.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>User Registration Form</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form action="register" method="post">
        <h3>Register Here</h3>

        <label for="name">Name</label>
        <input type="text" placeholder="Enter your name" id="name" name="name" required>

        <label for="email">Email</label>
        <input type="email" placeholder="Enter your email" id="email" name="email" required>

        <label for="password">Password</label>
        <input type="password" placeholder="Enter your password" id="password" name="password" required>

        <label for="phone">Phone</label>
        <input type="text" placeholder="Enter your phone number" id="phone" name="phone">

        <label for="address">Address</label>
        <input type="text" placeholder="Enter your address" id="address" name="address">

        <button type="submit">Register</button>
    </form>
</body>
</html>
