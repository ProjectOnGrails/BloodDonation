<%@ page import="com.BloodDonation.Status" %>
<!-- Modal -->
<div class="modal fade" id="viewModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="viewModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="viewModalLabel">View Transaction</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <g:form>
                        <div class="form-group">
                            <label for="status">Status:</label>${data.status}
                            <select class="form-control" id="status" name="status" disabled required>
                                <option value="${data.status}">${data.status}</option>
                                <g:each in="${com.BloodDonation.Status.values()}" var="status">
                                    <option value="${status}">${status}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="patient">Patient:</label>
                            <select class="form-control" id="patient" name="patient" disabled>
                                <option value="${data.patient.id}">${data.patient.name}</option>
                                <g:each in="${patients}" var="patient">
                                    <option value="${patient.id}">${patient.name}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="blood">Blood</label>
                            <select class="form-control" id="blood" name="blood.id" disabled required>
                                <option value="${data.blood.id}">${data.blood.id}</option>
                                <g:each in="${bloods}" var="blood">
                                    <option value="${blood.id}">${blood.id}</option>
                                </g:each>
                            </select>
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
                            <button type="Submit" class="btn btn-primary" value="Submit" id="edit" >Update</button>
                        </div>
                        <!-- Add more form fields as needed -->
                    </g:form>

                </div>
            </div>


        </div>
    </div>
</div>