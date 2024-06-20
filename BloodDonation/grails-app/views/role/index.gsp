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
    <title>Document</title>

</head>

<body>
<div class="container text-center">
    <g:render template="/Shared/message"/>
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="addRole">
                Create Role
            </button>
            <hr>
            <!-- Create modal -->
            <div class="modal fade" id="exampleModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title fs-5" id="exampleModalLabel">Add Role</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-body">
                                <g:render template="create"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Edit modal -->
            <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title fs-5" id="editModalLabel">Update Role</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-body" id="roleEdit"></div>
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

<!-- Initialize DataTables -->
<script>

    $(".editBtn").click(function(){
        var roleId = $(this).data('role-id');
        $.ajax({
            url: "${createLink(controller:'role',action:'edit')}",
            type:'post',
            data: {id:roleId},
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#roleEdit').html(response);
                $('#editModal').modal('show');
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