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
  <title>Doner</title>

</head>

<body>
<div class="container text-center">
  <g:render template="/Shared/message"/>
  <div class="row">
    <div class="col">
      <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#donerModal" id="addDoner">
        Create Doner
      </button>
      <hr>

      <!-- Add  Modal -->
      <div class="modal fade" id="donerModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="donerModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h2 class="modal-title fs-5" id="donerModalLabel">Add Doner</h2>
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

      <!-- Edit Modal -->
      <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h2 class="modal-title fs-5" id="editModalLabel">Update Doner</h2>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="modal-body" id="donerEdit"></div>
            </div>
          </div>
        </div>
      </div>
      <!-- View Modal -->
      <div class="modal fade" id="viewModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h2 class="modal-title fs-5" id="viewModalLabel">View Doner</h2>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
              <div class="modal-body" id="donerView">
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





<!-- Initialize DataTables -->
<script>

  $(".editBtn").click(function(){
    var donerId = $(this).data('doner-id');
    $.ajax({
      url: "${createLink(controller:'doner',action:'edit')}",
      type:'post',
      data: {id:donerId},
      success: function(response) {
        console.log('Controller action called successfully.');
        $('#donerEdit').html(response);
        $('#editModal').modal('show');
      },
      error: function(xhr, status, error) {
        console.error('Error calling controller action:', error);
      }
    });
  });
  $(".viewBtn").click(function(){
    var donerId = $(this).data('doner-id');
    $.ajax({
      url: "${createLink(controller:'doner',action:'view')}",
      type:'post',
      data: {id:donerId},
      success: function(response) {
        console.log('Controller action called successfully.');
        $('#donerView').html(response);
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