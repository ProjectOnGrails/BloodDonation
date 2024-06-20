<%@ page import="com.BloodDonation.Status" %>
<g:form action="save">
    <div class="form-group row g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <select class="form-control" id="status" name="status" required>
                    <option value="">Select</option>
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
                    <option value="">Select Patient</option>
                    <g:each in="${patients}" var="temp">
                        <option value="${temp.id}">${temp.name}</option>
                    </g:each>
                </select>
                <label for="patient">Patient</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-2">
                <select class="form-control" id="blood" name="blood.id" required>
                    <option value="">Select Blood</option>
                    <g:each in="${blood}" var="bloods">
                        <option value="${bloods.id}">${bloods.id}</option>
                    </g:each>
                </select>
                <label for="blood">Blood</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
    </div>
</g:form>
