<%@ page import="com.BloodDonation.BloodGroup" %>
<%@ page import="com.BloodDonation.Gender" %>
<!-- Modal -->
<div class="modal fade" id="viewModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="viewModalLabel">View Doner</h1>
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
                            <label for="bloodgroup">Blood Group:</label>${data.bloodgroup}
                            <select class="form-control" id="bloodgroup" name="bloodgroup" disabled required>
                                <option value="${data.bloodgroup}">${data.bloodgroup}</option>
                                <g:each in="${com.BloodDonation.BloodGroup.values()}" var="bloodgroup">
                                    <option value="${bloodgroup}">${bloodgroup}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="last_time_donated">Last Time Donated:</label>
                            <input type="date"  class="form-control" id="last_time_donated" name="last_time_donated" value="${data.last_time_donated}" disabled required>
                        </div>
                        <div class="form-group">
                            <label for="address">Address:</label>
                            <input type="text" class="form-control" id="address" name="address" value="${data.address}" disabled required>
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
                            <label for="phn">Phone:</label>
                            <input type="text" class="form-control" id="phn" name="phn" value="${data.phn}" disabled required>
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