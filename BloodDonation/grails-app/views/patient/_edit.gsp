<%@ page import="com.BloodDonation.BloodGroup" %>
<%@ page import="com.BloodDonation.Gender" %>
<!-- Modal -->
<div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="editModalLabel">Update Patient</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <g:form controller="patient" action="update" id="${data.id}">
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name" value="${data.name}" required>
                        </div>
                        <div class="form-group">
                            <label for="bloodgroup">Blood Group:</label>${data.bloodgroup}
                            <select class="form-control" id="bloodgroup" name="bloodgroup" required>
                                <option value="${data.bloodgroup}">${data.bloodgroup}</option>
                                <g:each in="${com.BloodDonation.BloodGroup.values()}" var="bloodgroup">
                                    <option value="${bloodgroup}">${bloodgroup}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="quantity_req">Quantity Required:</label>
                            <input type="text" class="form-control" id="quantity_req" name="quantity_req" value="${data.quantity_req}" required>
                        </div>
                        <div class="form-group">
                            <label for="age">Age:</label>
                            <input type="number" class="form-control" id="age" name="age" value="${data.age}" required>
                        </div>
                        <div class="form-group">
                            <label for="gender">Gender:</label>${data.gender}
                            <select class="form-control" id="gender" name="gender" required>
                                <option value="${data.gender}">${data.gender}</option>
                                <g:each in="${com.BloodDonation.Gender.values()}" var="gender">
                                    <option value="${gender}">${gender}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="hospitalname">Address:</label>
                            <input type="text" class="form-control" id="hospitalname" name="hospitalname" value="${data.hospitalname}" required>
                        </div>
                        <div class="form-group">
                            <label for="phn">Phone:</label>
                            <input type="text" class="form-control" id="phn" name="phn" value="${data.phn}" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="Submit" class="btn btn-primary" value="Submit" id="edit" >Update</button>
                        </div>
                        <!-- Add more form fields as needed -->
                    </g:form>

                </div>
            </div>


        </div>
    </div>
</div>