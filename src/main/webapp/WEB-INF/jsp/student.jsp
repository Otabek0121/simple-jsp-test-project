<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="uz">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Student qo'shish</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="bg-light">

<div class="container mt-4" style="max-width: 500px;">

    <h3 class="mb-3">Yangi student qo'shish</h3>

    <form action="http://localhost:8080/test/add" method="post" enctype="multipart/form-data">

        <div class="mb-2">
            <label for="firstname" class="form-label">Ismizni kiriting:</label>
            <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Ism" required />
        </div>

        <div class="mb-2">
            <label for="lastname" class="form-label">Familiyangizni kiriting:</label>
            <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Familiya" required />
        </div>

        <div class="mb-2">
            <label for="phoneNumber" class="form-label">Telefon raqamingiz:</label>
            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="+998901234567" required />
        </div>

        <div class="mb-2">
            <label for="age" class="form-label">Yosh</label>
            <input type="number" class="form-control" id="age" name="age" min="6" max="120" placeholder="Masalan: 20" required />
        </div>

        <div class="mb-3">
            <label for="photo" class="form-label">Rasm yuklash</label>
            <input type="file" class="form-control" id="photo" name="file" accept="image/*" required />
        </div>

        <button type="submit" class="btn btn-primary w-100">Saqlash</button>

    </form>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>