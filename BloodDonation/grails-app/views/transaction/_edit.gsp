<%@ page import="com.BloodDonation.Status" %>
<!-- Modal -->

    <g:form controller="transaction" action="update" id="${data.id}">
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <select class="form-control" id="status" name="status" required>
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
                    <select class="form-control" id="patient" name="patient.id" required>
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
                    <select class="form-control" id="blood" name="blood.id" required>
                        <option value="${data.blood.id}">${data.blood.id}</option>
                        <g:each in="${bloods}" var="blood">
                            <option value="${blood.id}">${blood.id}</option>
                        </g:each>
                    </select>
                    <label for="blood">Blood:</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary" value="Submit" id="edit">Update</button>
        </div>
    </g:form>
