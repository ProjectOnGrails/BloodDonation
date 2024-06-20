<%@ page import="com.BloodDonation.BloodGroup" %>
<%@ page import="com.BloodDonation.Gender" %>
<!-- Modal -->

<g:form controller="doner" action="update" id="${data.id}">
    <div class="form-group row g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="name" name="name" value="${data.name}" required>
                <label for="name">Name:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col-md">
            <div class="form-floating mb-2">
                <select class="form-control" id="bloodgroup" name="bloodgroup" required>
                    <option value="${data.bloodgroup}">${data.bloodgroup}</option>
                    <g:each in="${com.BloodDonation.BloodGroup.values()}" var="bloodgroup">
                        <option value="${bloodgroup}">${bloodgroup}</option>
                    </g:each>
                </select>
                <label for="bloodgroup">Blood Group:</label>
            </div>
        </div>
        <div class="col-md">
            <div class="form-floating mb-2">
                <input type="date" class="form-control" id="last_time_donated" name="last_time_donated" value="${data.last_time_donated}" required>
                <label for="last_time_donated">Last Time Donated:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="address" name="address" value="${data.address}" required>
                <label for="address">Address:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col-md-6">
            <div class="form-floating mb-2">
                <input type="number" class="form-control" id="age" name="age" value="${data.age}" required>
                <label for="age">Age:</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating mb-2">
                <select class="form-control" id="gender" name="gender" required>
                    <option value="${data.gender}">${data.gender}</option>
                    <g:each in="${com.BloodDonation.Gender.values()}" var="gender">
                        <option value="${gender}">${gender}</option>
                    </g:each>
                </select>
                <label for="gender">Gender:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="phn" name="phn" value="${data.phn}" required>
                <label for="phn">Phone:</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" value="Submit" id="edit">Update</button>
    </div>
</g:form>
