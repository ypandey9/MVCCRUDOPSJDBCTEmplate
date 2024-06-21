<!DOCTYPE html>
<html>
<head>
    <title>New Employee</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" 
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
    crossorigin="anonymous">
</head>
<body>
    
    <div class="container">
     <div class="row"> 
     <div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
    <h1 class="text-center"> Add New Employee </h1>
    <div class="card-body">
    <form action="/MVCCRUDJDBCTemplate/employee" method="post">
        <p>Name: <input type="text" name="name" class="form-control" required></p>
        <p>Salary: <input type="number" name="salary" class="form-control" required></p>
        <p>Designation: <input type="text" name="designation" class="form-control" required></p>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
    </div>
    </div>
    </div>
    </div>
</body>
</html>
