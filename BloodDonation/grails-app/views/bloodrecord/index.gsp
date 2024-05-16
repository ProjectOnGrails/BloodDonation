<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="layout" content="main"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
    <title>BloodRecord</title>

</head>

<body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<g:render template="/Shared/message"/>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" id="addbloodRecord">
    Create Bloodrecord
</button>
<hr>

<!-- Modal -->
<div class="modal fade" id="bloodRecordModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="bloodRecordModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="bloodRecordModalLabel">Add Bloodrecord</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body" id="showblood">
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal-body" id="bloodEdit"></div>
<!-- Your HTML table -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<g:render template="show" />

<!-- Initialize DataTables -->
<script>

    $(".editBtn").click(function(){
        var bloodId = $(this).data('blood-id');
        $.ajax({
            url: "${createLink(controller:'bloodrecord',action:'edit')}",
            type:'post',
            data: {id:bloodId},
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#bloodEdit').html(response);
                $('#editModal').modal('show');
            },
            error: function(xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
    $("#addbloodRecord").click(function(){
        $.ajax({
            url: "${createLink(controller:'bloodrecord',action:'create')}",
            type:'post',
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#showblood').html(response);
                $('#bloodRecordModal').modal('show');
            },
            error: function(xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
    $(".viewBtn").click(function(){
        var bloodId = $(this).data('blood-id');
        $.ajax({
            url: "${createLink(controller:'bloodrecord',action:'view')}",
            type:'post',
            data: {id:bloodId},
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#bloodEdit').html(response);
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


</body>
</html>