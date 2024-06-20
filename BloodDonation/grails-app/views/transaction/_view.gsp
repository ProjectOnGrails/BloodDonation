<%@ page import="com.BloodDonation.Status" %>
<!-- Modal -->

                <g:form>
                    <div class="form-group row g-3 mb-2">
                        <div class="col">
                            <div class="form-floating mb-2">
                                <select class="form-control" id="status" name="status" disabled required>
                                    <option value="${data.status}">${data.status}</option>
                                    <g:each in="${com.BloodDonation.Status.values()}" var="status">
                                        <option value="${status}">${status}</option>
                                    </g:each>
                                </select>
                                <label for="status">Status:</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row g-3 mb-2">
                        <div class="col">
                            <div class="form-floating mb-2">
                                <select class="form-control" id="patient" name="patient" disabled required>
                                    <option value="${data.patient.id}">${data.patient.name}</option>
                                    <g:each in="${patients}" var="patient">
                                        <option value="${patient.id}">${patient.name}</option>
                                    </g:each>
                                </select>
                                <label for="patient">Patient:</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating mb-2">
                                <select class="form-control" id="blood" name="blood.id" disabled required>
                                    <option value="${data.blood.id}">${data.blood.id}</option>
                                    <g:each in="${bloods}" var="blood">
                                        <option value="${blood.id}">${blood.id}</option>
                                    </g:each>
                                </select>
                                <label for="blood">Blood:</label>
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
            </div>
        </div>
    </div>
</div>
