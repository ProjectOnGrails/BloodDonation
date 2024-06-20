<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><g:layoutTitle default="BloodDonation"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="main.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <g:layoutHead/>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-auto border min-vh-100">
            <div class="pt-2 pb-1 px-2">
                <a href="/" class="text-decoration-none">
                    <span class="fs-4 fw-bold d-none d-sm-inline text-danger">
                        <i class="bi bi-droplet-fill fs-4 me-2"></i>
                        Blood<br/> Donation
                    </span>
                    <hr/>
                </a>
            </div>
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item">
                    <a href="/bloodrecord" class="nav-link text-dark ${controllerName == 'bloodrecord' ? 'active' : ''}">
                        <i class="bi bi-table fs-4 me-2"></i>
                        <span class="d-none d-sm-inline">BloodRecord</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/doner" class="nav-link text-dark ${controllerName == 'doner' ? 'active' : ''}">
                        <i class="bi bi-person fs-4 me-2"></i>
                        <span class="d-none d-sm-inline">Doner</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/patient" class="nav-link text-dark ${controllerName == 'patient' ? 'active' : ''} ">
                        <i class="bi bi-person fs-4 me-2"></i>
                        <span class="d-none d-sm-inline">
                            Patient
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/employee" class="nav-link  text-dark ${controllerName == 'employee' ? 'active' : ''} ">
                        <i class="bi bi-person-check-fill fs-4 me-2"></i>
                        <span class="d-none d-sm-inline">
                            Employee
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/employee" class="nav-link text-dark ${controllerName == 'role' ? 'active' : ''} " >
                        <i class="bi bi-person-bounding-box fs-4 me-2"></i>
                        <span class="d-none d-sm-inline">
                            Role
                        </span>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/transaction" class="nav-link text-dark ${controllerName == 'transaction' ? 'active' : ''} ">
                        <i class="bi bi-arrow-left-right fs-4 me-2"></i>
                        <span class="d-none d-sm-inline">
                            Transaction
                        </span>
                    </a>
                </li>
                <sec:ifNotLoggedIn>
                    <li class="nav-item">
                        <a href="/login/auth" class="nav-link text-dark">
                            <i class="bi bi-box-arrow-in-left fs-4 me-2"></i>
                            <span class="d-none d-sm-inline">Login</span>
                        </a>
                    </li>
                </sec:ifNotLoggedIn>
            </ul>
            <div class="mt-auto">
                <ul class="nav nav-pills flex-column">
                    <sec:ifLoggedIn>
                        <li class="nav-item">
                            <a href="" class="nav-link text-dark">
                                <i class="bi bi-person-circle fs-4 me-2"></i>
                                <span class="d-none d-sm-inline"><sec:username/>!</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/logout/index" class="nav-link text-dark">
                                <i class="bi bi-box-arrow-right fs-4 me-2"></i>
                                <span class="d-none d-sm-inline">Logout</span>
                            </a>
                        </li>
                    </sec:ifLoggedIn>

                </ul>
            </div>
        </div>
        <div class="col mt-4">
            <g:layoutBody/>
        </div>
    </div>

</div>
</body>
</html>
