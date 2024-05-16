<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="layout" content="main"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
    <title>Doner</title>

</head>

<body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<g:render template="/Shared/message"/>
<!-- Button trigger modal -->


<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#patientModal" id="addPatient">
    Create Patient
</button>
<hr>
<!-- Modal -->
<div class="modal fade" id="patientModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="patientModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="patientModalLabel">Add Patient</h1>
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

<div class="modal-body" id="patientEdit"></div>
<!-- Your HTML table -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

<g:render template="show" />

<!-- Initialize DataTables -->
<script>

    $(".editBtn").click(function(){
        var patientId = $(this).data('patient-id');
        $.ajax({
            url: "${createLink(controller:'patient',action:'edit')}",
            type:'post',
            data: {id:patientId},
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#patientEdit').html(response);
                $('#editModal').modal('show');
            },
            error: function(xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
    $(".viewBtn").click(function(){
        var patientId = $(this).data('patient-id');
        $.ajax({
            url: "${createLink(controller:'patient',action:'view')}",
            type:'post',
            data: {id:patientId},
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#patientEdit').html(response);
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