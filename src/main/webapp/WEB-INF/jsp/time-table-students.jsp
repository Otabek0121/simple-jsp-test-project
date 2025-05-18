<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Studentlar baholash jadvali</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<div class="container mt-4">
    <h2>Studentlar baholash jadvali</h2>
    <form action="${pageContext.request.contextPath}/submit-grades" method="post">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>№</th>
                <th>Ism</th>
                <th>Familiya</th>
                <c:forEach var="lesson" items="${lessons}">
                    <th>${lesson.date}</th>
                </c:forEach>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="student" items="${students}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${student.firstname}</td>
                    <td>${student.lastname}</td>
                    <c:forEach var="lesson" items="${lessons}">
                        <td>
                            <input type="number"
                                   name="grade_${student.id}_${lesson.id}"
                                   class="form-control"
                                   min="0" max="5"
                                   value="<c:out value='${grades[student.id][lesson.id]}' default=''/>" />
                        </td>
                    </c:forEach>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <button type="submit" class="btn btn-primary">Baholarni saqlash</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
