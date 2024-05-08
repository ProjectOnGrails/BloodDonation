<table id="myTable">
    <!-- Table header and body -->
    <thead>
    <tr>
        <th>ID</th>
        <th>BloodGroup</th>
        <th>Collected_Date</th>
        <th>Collection_Type</th>
        <th>Quantity</th>
        <th>Doner</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${bloods}" var="blood">
        <tr>
            <td>${blood.id}</td>
            <td>${blood.bloodGroup}</td>
            <td>${blood.collected_date}</td>
            <td>${blood.collection_type}</td>
            <td>${blood.quantity}</td>
            <td>${blood.doner.name}</td>
            <td>
                <g:link  class="btn btn-primary editBtn" data-bs-toggle="modal" data-blood-id="${blood.id}">Update</g:link>
                <g:link action="delete" id="${blood.id}" onclick="return confirm('Are you sure you want to delete this product?')">
                    <button type="button" class="btn btn-danger">Delete</button>
                </g:link>
            </td>
        </tr>
    </g:each>
    <!-- Add more rows as needed -->
    </tbody>


</table>