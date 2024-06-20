<table class="table table-striped" id="myTable">
    <!-- Table header and body -->
    <thead>
    <tr>
        <th>ID</th>
        <th>Authority</th>
        <th>Count</th>
        <th>Action</th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${roles}" var="role">
        <tr>
            <td>${role.id}</td>
            <td>${role.authority}</td>
            <td>${role.updateCount}</td>
            <td>
                <g:link  class="btn btn-primary editBtn" data-bs-toggle="modal" data-role-id="${role.id}"><i class="bi bi-pen"></i></g:link>
                <g:link action="delete" id="${role.id}" onclick="return confirm('Are you sure you want to delete this product?')">
                    <button type="button" class="btn btn-danger"><i class="bi bi-trash"></i></button>
                </g:link>
            </td>
        </tr>
    </g:each>
    <!-- Add more rows as needed -->
    </tbody>


</table>