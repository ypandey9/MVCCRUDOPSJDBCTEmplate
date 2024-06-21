<!DOCTYPE html>
<html>
<head>
    <title>View Employee</title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" 
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
    crossorigin="anonymous">
</head>
<body>
     <div class="container">
     <div class="row"> 
     <div class="col-lg-6 col-md-6 col-sm-6 container justify-content-center card">
    <h1 class="text-center"> View Employee </h1>
    <div class="card-body">
  
    <p>ID: ${employee.id}</p>
    <p>Name: ${employee.name}</p>
    <p>Salary: ${employee.salary}</p>
    <p>Designation: ${employee.designation}</p>
    <br/>
    <a href="/MVCCRUDJDBCTemplate/employees">Back to Employee List</a>
    
    </div>
    </div>
    </div>
    </div>
</body>
</html>
