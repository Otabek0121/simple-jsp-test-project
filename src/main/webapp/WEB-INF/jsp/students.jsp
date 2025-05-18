<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>

<html>
<head>

    <title> hello</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body class="container mx-auto px-5">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <form class="d-flex">
                <div class="d-flex">
                    <input type="text" id="searchInput" class="form-control me-2" placeholder="Ism yoki Familiya bo‘yicha qidiring">
                    <button class="btn btn-primary" onclick="searchTable()">Search</button>
                </div>
            </form>
        </div>
    </div>
</nav>




    <table class="table">
        <thead>
            <tr>
                <th></th>
                <th>ID</th>
                <th>firstname</th>
                <th>lastname</th>
            </tr>
        </thead>

        <tbody>
        <c:forEach var="student" items="${students}" varStatus="status">
            <tr>
                <td> <input type="checkbox" name="${student.id}" onchange="handleChange('${student.id}',this)"/>  </td>
                <td>${status.index + 1}</td>
                <td>${student.firstname}</td>
                <td>${student.lastname}</td>
            </tr>
        </c:forEach>

        </tbody>

    </table>
<div class="d-flex justify-content-between align-items-center mb-3  mt-3">
    <button class="btn btn-danger" onclick="handleSubmit()">Delete All</button>
</div>


<script>
    let ids=[]
    function handleChange(id,checkbox){

        if (checkbox.checked) {
            if (!ids.includes(id)) {
                ids.push(id);
            }
        } else {
            ids = ids.filter(el => el !== id);
        }
    }

    async function handleSubmit(){
        await fetch("http://localhost:8080/test", {
            method:"DELETE",
            headers: {
                'Content-Type':"application/json"
            },
            body: JSON.stringify({
                ids,
                user: 1
            })
        }).then(() =>  window.location.href = "/test/students")
            .catch((error)=> console.log)
    }

</script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>




</html>
