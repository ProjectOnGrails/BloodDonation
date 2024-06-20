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
                    <input type="text" class="form-control" id="phone" name="phone" value="${data.phone}" disabled required>
                    <label for="phone">Phone:</label>
                </div>
            </div>
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="email" name="email" value="${data.email}" disabled required>
                    <label for="email">Email:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="username" name="username" value="${data.user.username}" disabled required>
                    <label for="username">Username:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="password" class="form-control" id="password" name="password" value="${data.user.password}" disabled required>
                    <label for="password">Password:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="role" name="role" value="${data.user.authorities.authority}" disabled required>
                    <label for="role">Role:</label>
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
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="createdBy" name="createdBy" value="${data.createdBy}" disabled required>
                    <label for="createdBy">Created By:</label>
                </div>
            </div>
            <div class="col">
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
