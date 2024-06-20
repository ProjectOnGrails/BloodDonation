<table class="table table-striped" id="myTable">
    <!-- Table header and body -->
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>BloodGroup</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${patients}" var="patient">
        <tr>
            <td>${patient.id}</td>
            <td>${patient.name}</td>
            <td>${patient.bloodgroup}</td>
            <td>
                <g:link  class="btn btn-outline-success viewBtn" data-bs-toggle="modal" data-patient-id="${patient.id}"><i class="bi bi-eye-fill"></i></g:link>
                <g:link  class="btn btn-primary editBtn" data-bs-toggle="modal" data-patient-id="${patient.id}"><i class="bi bi-pen"></i></g:link>
                <g:link action="delete" id="${patient.id}" onclick="return confirm('Are you sure you want to delete this product?')">
                    <button type="button" class="btn btn-danger"><i class="bi bi-trash"></i></button>
                </g:link>
            </td>
        </tr>
    </g:each>
    <!-- Add more rows as needed -->
    </tbody>


</table>