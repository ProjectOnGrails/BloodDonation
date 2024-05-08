<%@ page import="com.BloodDonation.Status" %>
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#transactionModal" id="addtransaction">
    Create Transaction
</button>
<hr>

<!-- Modal -->
<div class="modal fade" id="transactionModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="transactionModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="transactionModalLabel">Add Transaction</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <g:form action="save">
                    <div class="form-group">
                        <label for="status">Status:</label>
                        <select class="form-control" id="status" name="status" required>
                            <option value="">Select</option>
                            <g:each in="${com.BloodDonation.Status.values()}" var="status">
                                <option value="${status}">${status}</option>
                            </g:each>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="patient">Patient</label>
                        <select class="form-control" id="patient" name="patient.id" required>
                            <option value="">Select Patient</option>
                            <g:each in="${patients}" var="temp">
                                <option value="${temp.id}">${temp.name}</option>
                            </g:each>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="blood">Blood</label>
                        <select class="form-control" id="blood" name="blood.id" required>
                            <option value="">Select Blood</option>
                            <g:each in="${blood}" var="bloods">
                                <option value="${bloods.id}">${bloods.id}</option>
                            </g:each>
                        </select>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>