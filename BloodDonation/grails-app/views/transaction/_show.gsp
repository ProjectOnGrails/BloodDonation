<table id="myTable">
    <!-- Table header and body -->
    <thead>
    <tr>
        <th>ID</th>
        <th>Status</th>
        <th>Patient</th>
        <th>Blood</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${transactions}" var="transaction">
        <tr>
            <td>${transaction.id}</td>
            <td>${transaction.status}</td>
            <td>${transaction.patient.name}</td>
            <td>${transaction.blood.id}</td>
            <td>
                <g:link  class="btn btn-primary viewBtn" data-bs-toggle="modal" data-transaction-id="${transaction.id}">View</g:link>
                <g:link  class="btn btn-primary editBtn" data-bs-toggle="modal" data-transaction-id="${transaction.id}">Update</g:link>
                <g:link action="delete" id="${transaction.id}" onclick="return confirm('Are you sure you want to delete this product?')">
                    <button type="button" class="btn btn-danger">Delete</button>
                </g:link>
            </td>
        </tr>
    </g:each>
    <!-- Add more rows as needed -->
    </tbody>
</table>