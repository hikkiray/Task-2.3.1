<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<h2>Users List</h2>

<!-- Форма для добавления нового пользователя -->
<form action="add" method="post">
    Name: <input type="text" name="name" required>
    Email: <input type="email" name="email" required>
    Age: <input type="number" name="age" required>
    <button type="submit">Add User</button>
</form>

<!-- Таблица с пользователями -->
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Age</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.age}</td>
            <td>
                <!-- Форма для удаления -->
                <form action="delete" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="${user.id}">
                    <button type="submit">Delete</button>
                </form>

                <!-- Форма для редактирования -->
                <form action="update" method="post" style="display:inline;">
                    <input type="hidden" name="id" value="${user.id}">
                    <input type="text" name="name" value="${user.name}" required>
                    <input type="email" name="email" value="${user.email}" required>
                    <input type="number" name="age" value="${user.age}" required>
                    <button type="submit">Update</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>