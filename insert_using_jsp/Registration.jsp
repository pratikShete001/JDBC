<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body{
            background: linear-gradient(135deg, #667eea, #764ba2);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-card{
            width: 100%;
            max-width: 500px;
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        .card-header{
            background: #0d6efd;
            color: white;
            text-align: center;
            padding: 20px;
            border-radius: 15px 15px 0 0 !important;
        }

        .btn-register{
            width: 100%;
            padding: 10px;
            font-size: 18px;
        }
    </style>
</head>
<body>
<form action="login.jsp">
<div class="card register-card">
    
    <div class="card-header">
        <h2>User Registration</h2>
        <p class="mb-0">Create your account</p>
    </div>

    <div class="card-body p-4">

        <form action="login.jsp" method="post">

            <div class="mb-3">
                <label class="form-label">Full Name</label>
                <input type="text" name="name" class="form-control"
                       placeholder="Enter your full name" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Gender</label>
                <select name="gender" class="form-select" required>
                    <option value="">Select Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Email Address</label>
                <input type="email" name="email" class="form-control"
                       placeholder="Enter your email" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Password</label>
                <input type="password" name="pwd" class="form-control"
                       placeholder="Create password" required>
            </div>

            <div class="mb-3">
                <label class="form-label">Confirm Password</label>
                <input type="password" class="form-control"
                       placeholder="Confirm password" required>
            </div>

            <button type="submit" class="btn btn-primary btn-register">
                Register
            </button>

        </form>

        <div class="text-center mt-3">
            Already have an account?
            <a href="login.html">Login</a>
        </div>

    </div>

</div>
</form>
</body>
</html>
