<%@ page import="com.BloodDonation.BloodGroup" %>
<%@ page import="com.BloodDonation.Gender" %>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#donerModal" id="addDoner">
    Create Doner
</button>
<hr>

<!-- Modal -->
<div class="modal fade" id="donerModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="donerModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="donerModalLabel">Add Doner</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
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
                            <label for="last_time_donated">Last Time Donated:</label>
                            <input type="date" class="form-control" id="last_time_donated" name="last_time_donated" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Address:</label>
                            <input type="text" class="form-control" id="address" name="address" required>
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
                            <label for="phn">Phone:</label>
                            <input type="text" class="form-control" id="phn" name="phn" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary" value="Submit">Save</button>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>