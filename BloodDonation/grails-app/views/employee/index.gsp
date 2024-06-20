<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="layout" content="main"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
    <title>Employee</title>

</head>

<body>
<div class="container text-center">
    <g:render template="/Shared/message"/>
    <div class="row">
        <div class="col">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal"  id="addEmployee">
                Create Employee
            </button>
            <hr>

            <!--Create Modal -->
            <div class="modal fade" id="employeeModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="employeeModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title fs-5" id="employeeModalLabel">Add Employee</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-body" id="showemp">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Edit Modal -->
            <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title fs-5" id="editModalLabel">Update Employee</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-body" id="empEdit"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--View Modal -->
            <div class="modal fade" id="viewModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title fs-5" id="viewModalLabel">View Employee</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-body" id="empView">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <g:render template="show" />
    </div>
</div>





<!-- Your HTML table -->


<!-- Initialize DataTables -->
<script>

    $(".editBtn").click(function(){
        var empId = $(this).data('emp-id');
        $.ajax({
            url: "${createLink(controller:'employee',action:'edit')}",
            type:'post',
            data: {id:empId},
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#empEdit').html(response);
                $('#editModal').modal('show');
            },
            error: function(xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
    $("#addEmployee").click(function(){
        $.ajax({
            url: "${createLink(controller:'employee',action:'create')}",
            type:'post',
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#showemp').html(response);
                $('#employeeModal').modal('show');
            },
            error: function(xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
    $(".viewBtn").click(function(){
        var empId = $(this).data('emp-id');
        $.ajax({
            url: "${createLink(controller:'employee',action:'view')}",
            type:'post',
            data: {id:empId},
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#empView').html(response);
                $('#viewModal').modal('show');
            },
            error: function(xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
    $(document).ready(function () {
        $('#myTable').DataTable();
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>