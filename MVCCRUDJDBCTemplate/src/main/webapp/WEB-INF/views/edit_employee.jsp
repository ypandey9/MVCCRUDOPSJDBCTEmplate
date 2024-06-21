<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" 
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
    crossorigin="anonymous">
    </head>
<body>
     <div class="container">
     <div class="row"> 
     <div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
    <h1 class="text-center"> Update Employee </h1>
    <div class="card-body">
    <form action="/MVCCRUDJDBCTemplate/employee/update" method="post">
        <input type="hidden" name="id" value="${employee.id}" class="form-control">
        <p>Name: <input type="text" class="form-control" name="name" value="${employee.name}" required></p>
        <p>Salary: <input type="number" class="form-control" name="salary" value="${employee.salary}" required></p>
        <p>Designation: <input type="text" class="form-control" name="designation" value="${employee.designation}" required></p>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
    </div>
    </div>
    </div>
    </div>
</body>
</html>
