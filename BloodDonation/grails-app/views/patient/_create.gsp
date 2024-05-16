<%@ page import="com.BloodDonation.BloodGroup" %>
<%@ page import="com.BloodDonation.Gender" %>

<g:form action="save">
    <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" class="form-control" id="name" name="name" required>
    </div>
    <div class="form-group">
        <label for="bloodgroup">Blood Group:</label>
        <select class="form-control" id="bloodgroup" name="bloodgroup" required>
            <option value="">Select</option>
            <g:each in="${com.BloodDonation.BloodGroup.values()}" var="bloodgroup">
                <option value="${bloodgroup}">${bloodgroup}</option>
            </g:each>
        </select>
    </div>
    <div class="form-group">
        <label for="quantity_req">Quantity Required:</label>
        <input type="text" class="form-control" id="quantity_req" name="quantity_req" required>
    </div>
    <div class="form-group">
        <label for="age">Age:</label>
        <input type="number" class="form-control" id="age" name="age" required>
    </div>
    <div class="form-group">
        <label for="gender">Gender:</label>
        <select class="form-control" id="gender" name="gender" required>
            <option value="">Select</option>
            <g:each in="${com.BloodDonation.Gender.values()}" var="gender">
                <option value="${gender}">${gender}</option>
            </g:each>
        </select>
    </div>
    <div class="form-group">
        <label for="hospitalname">Hospital Name:</label>
        <input type="text" class="form-control" id="hospitalname" name="hospitalname" required>
    </div>

    <div class="form-group">
        <label for="phn">Phone:</label>
        <input type="text" class="form-control" id="phn" name="phn" required>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" value="Submit">Save</button>
    </div>
</g:form>

