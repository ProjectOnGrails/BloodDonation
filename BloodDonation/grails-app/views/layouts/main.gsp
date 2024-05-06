<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="BloodDonation"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <g:layoutHead/>
</head>

<body>

<div class="sidebar">
    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li><a href="/doner/index">Doner</a></li>
            <li><a href="#">Blood</a></li>
            <li><a href = "/patient/index">Patient</a></li>
            <li><a href = "#">Transaction</a></li>
            <li><a href="/role/index">Role</a></li>
            <li><a href="/employee/index">Employee</a></li>
        </ul>
        <hr color="white">
    </nav>
    <div class="user">
        <sec:ifLoggedIn>
            <h4>Hello <sec:loggedInUserInfo field='username'/></h4>
            <button ><a href="#" >Logout</a></button>
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <button ><a href="/login/auth" >LogIn</a></button>
        </sec:ifNotLoggedIn>
    </div>
</div>


<div class="col-md-9 content">
    <g:layoutBody/>
</div>

</body>
</html>
