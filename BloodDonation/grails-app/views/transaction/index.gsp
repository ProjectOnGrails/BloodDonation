<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="layout" content="main"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
    <title>Transaction</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>

</head>

<body>
<div class="container text-center">
    <g:render template="/Shared/message"/>
    <div class="row">
        <div class="col">
            <button type="button" class="btn btn-primary" data-bs-toggle="modal"  id="addtransaction">
                Create Transaction
            </button>
            <hr>

            <!-- Create Modal -->
            <div class="modal fade" id="transactionModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="transactionModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title fs-5" id="transactionModalLabel">Add Transaction</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body" id="showtransaction">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Edit Modal -->
            <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title fs-5" id="editModalLabel">Update Transaction</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-body" id="transactionEdit"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- View Modal -->
            <div class="modal fade" id="viewModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title fs-5" id="viewModalLabel">View Transaction</h2>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="modal-body" id="transactionView"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Button trigger modal -->



<!-- Your HTML table -->

<g:render template="show" />

<!-- Initialize DataTables -->
<script>

    $(".editBtn").click(function(){
        var transactionId = $(this).data('transaction-id');
        $.ajax({
            url: "${createLink(controller:'transaction',action:'edit')}",
            type:'post',
            data: {id:transactionId},
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#transactionEdit').html(response);
                $('#editModal').modal('show');
            },
            error: function(xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
    $("#addtransaction").click(function(){
        $.ajax({
            url: "${createLink(controller:'transaction',action:'create')}",
            type:'post',
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#showtransaction').html(response);
                $('#transactionModal').modal('show');
            },
            error: function(xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
    $(".viewBtn").click(function(){
        var transactionId = $(this).data('transaction-id');
        $.ajax({
            url: "${createLink(controller:'transaction',action:'view')}",
            type:'post',
            data: {id:transactionId},
            success: function(response) {
                console.log('Controller action called successfully.');
                $('#transactionView').html(response);
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