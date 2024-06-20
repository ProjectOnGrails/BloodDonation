<table class="table table-striped" id="myTable">
    <!-- Table header and body -->
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Phone</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${employees}" var="employee">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.name}</td>
            <td>${employee.age}</td>
            <td>${employee.gender}</td>
            <td>${employee.phone}</td>
            <td>
                <g:link  class="btn btn-outline-success viewBtn" data-bs-toggle="modal" data-emp-id="${employee.id}"><i class="bi bi-eye-fill"></i></g:link>
                <g:link  class="btn btn-primary editBtn" data-bs-toggle="modal" data-emp-id="${employee.id}"><i class="bi bi-pen"></i></g:link>
                <g:link action="delete" id="${employee.id}" onclick="return confirm('Are you sure you want to delete this product?')">
                    <button type="button" class="btn btn-danger"><i class="bi bi-trash"></i></button>
                </g:link>
            </td>
        </tr>
    </g:each>
    <!-- Add more rows as needed -->
    </tbody>


</table>