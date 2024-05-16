<%@ page import="com.BloodDonation.Gender" %>
<!-- Modal -->
<div class="modal fade" id="viewModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="viewModalLabel">View Employee</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <g:form>
                        <div class="form-group">
                            <label for="name">Name:</label>
                            <input type="text" class="form-control" id="name" name="name" value="${data.name}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="age">Age:</label>
                            <input type="number" class="form-control" id="age" name="age" value="${data.age}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="gender">Gender:</label>${data.gender}
                            <select class="form-control" id="gender" name="gender" disabled required>
                                <option value="${data.gender}">${data.gender}</option>
                                <g:each in="${com.BloodDonation.Gender.values()}" var="gender">
                                    <option value="${gender}">${gender}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone:</label>
                            <input type="text" class="form-control" id="phone" name="phone" value="${data.phone}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="text" class="form-control" id="email" name="email" value="${data.email}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" class="form-control" id="username" name="username" value="${data.user.username}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" value="${data.user.password}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="role">Role:</label>
                            <g:select name="role" from="${roles}" optionKey="authority" optionValue="authority" class="form-control" value="${data.user.authorities.authority}" required="true" noSelection="['': 'Select Role']" disabled=""/>
                        </div>
                        <div class="form-group">
                            <label for="dateCreated">Date Created:</label>
                            <input type="text" class="form-control" id="dateCreated" name="dateCreated" value="${data.dateCreated}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="lastUpdated">Last Updated:</label>
                            <input type="text" class="form-control" id="lastUpdated" name="lastUpdated" value="${data.lastUpdated}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="createdBy">Created By:</label>
                            <input type="text" class="form-control" id="createdBy" name="createdBy" value="${data.createdBy}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="updatedBy">Updated By:</label>
                            <input type="text" class="form-control" id="updatedBy" name="updatedBy" value="${data.updatedBy}" disabled required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                        <!-- Add more form fields as needed -->
                    </g:form>

                </div>
            </div>


        </div>
    </div>
</div>