<%@ page import="com.BloodDonation.BloodGroup" %>
<!-- Modal -->
<g:form controller="bloodrecord" action="update" id="${data.id}">
    <div class ="form-group row g-3 mb-2">
        <div class="col-md">
            <div class ="form-floating mb-2">
                <select class="form-control" id="bloodGroup" name="bloodGroup" required>
                    <option value="${data.bloodGroup}">${data.bloodGroup}</option>
                    <g:each in="${com.BloodDonation.BloodGroup.values()}" var="bloodgroup">
                        <option value="${bloodgroup}">${bloodgroup}</option>
                    </g:each>
                </select>
                <label for="bloodGroup">Blood Group:</label>
            </div>
        </div>
        <div class="col-md">
            <div class="form-floating mb-2">
                <input type="date" class="form-control" id="collected_date" name="collected_date" value="${data.collected_date}" required>
                <label for="collected_date">Collection Type:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col-8">
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="collection_type" name="collection_type" value="${data.collection_type}" required>
                <label for="collection_type">Collection Type:</label>
            </div>
        </div>
        <div class="col-4">
            <div class="form-floating mb-2">
                <input type="number" class="form-control" id="quantity" name="quantity" value="${data.quantity}" required/>
                <label for="quantity">Quantity:</label>
            </div>
        </div>
    </div>
    <div class="form-group g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <select class="form-control" id="doner" name="doner">
                    <option value="${data.doner.id}">${data.doner.name}</option>
                    <g:each in="${doners}" var="doner">
                        <option value="${doner.id}">${doner.name}</option>
                    </g:each>
                </select>
                <label for="doner">Doner</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="Submit" class="btn btn-primary" value="Submit" id="edit" >Update</button>
    </div>
    <!-- Add more form fields as needed -->
</g:form>
