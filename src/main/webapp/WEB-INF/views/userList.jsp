<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.entity.User" %>
<!DOCTYPE html>
<html>
<head>
    <title>User List</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <!-- Add other headers as necessary -->
            </tr>
        </thead>
        <tbody>
            <%
                List<User> users = (List<User>) request.getAttribute("users");
                if (users != null) {
                    for (User user : users) {
            %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getName() %></td>
                    <td><%= user.getEmail() %></td>
                    <!-- Add other user properties as necessary -->
                </tr>
            <%
                    }
                }
            %>
        </tbody>
    </table>
</body>
</html>
