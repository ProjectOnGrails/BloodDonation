<%@ page import="com.BloodDonation.BloodGroup" %>
<%@ page import="com.BloodDonation.Gender" %>
<!-- Modal -->

    <g:form>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="name" name="name" value="${data.name}" disabled required>
                    <label for="name">Name:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col-md">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="bloodgroup" name="bloodgroup" value="${data.bloodgroup}" disabled required>
                    <label for="bloodgroup">Blood Group:</label>
                </div>
            </div>
            <div class="col-md">
                <div class="form-floating mb-2">
                    <input type="date" class="form-control" id="last_time_donated" name="last_time_donated" value="${data.last_time_donated}" disabled required>
                    <label for="last_time_donated">Last Time Donated:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="address" name="address" value="${data.address}" disabled required>
                    <label for="address">Address:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col-md-6">
                <div class="form-floating mb-2">
                    <input type="number" class="form-control" id="age" name="age" value="${data.age}" disabled required>
                    <label for="age">Age:</label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="gender" name="gender" value="${data.gender}" disabled required>
                    <label for="gender">Gender:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="phn" name="phn" value="${data.phn}" disabled required>
                    <label for="phn">Phone:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="dateCreated" name="dateCreated" value="${data.dateCreated}" disabled required>
                    <label for="dateCreated">Date Created:</label>
                </div>
            </div>
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="lastUpdated" name="lastUpdated" value="${data.lastUpdated}" disabled required>
                    <label for="lastUpdated">Last Updated:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col-md">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="createdBy" name="createdBy" value="${data.createdBy}" disabled required>
                    <label for="createdBy">Created By:</label>
                </div>
            </div>
            <div class="col-md">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="updatedBy" name="updatedBy" value="${data.updatedBy}" disabled required>
                    <label for="updatedBy">Updated By:</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
    </g:form>
