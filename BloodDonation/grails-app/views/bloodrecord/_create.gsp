<%@ page import="com.BloodDonation.BloodGroup" %>

<g:form action="save">
    <div class="form-group row g-3 mb-2">
        <div class="col-md">
            <div class ="form-floating mb-2">
                <select class="form-control" id="bloodGroup" name="bloodGroup" required>
                    <option value="">Select</option>
                    <g:each in="${com.BloodDonation.BloodGroup.values()}" var="bloodgroup">
                        <option value="${bloodgroup}">${bloodgroup}</option>
                    </g:each>
                </select>
                <label for="bloodGroup">Blood Group:</label>
            </div>
        </div>
        <div class="col-md">
            <div class = "form-floating mb-2">
                <input type="date" class="form-control" id="collected_date" name="collected_date" required/>
                <label for="collected_date">Collection Date:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col-8">
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="collection_type" name="collection_type" required>
                <label for="collection_type">Collection Type:</label>
            </div>
        </div>
        <div class="col-4">
            <div class="form-floating mb-2">
                <input type="number" class="form-control" id="quantity" name="quantity" required>
                <label for="quantity">Quantity:</label>
            </div>
        </div>
    </div>
    <div class="form-group g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <select class="form-control" id="doner" name="doner">
                    <option value="">Select Doner</option>
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
        <button type="submit" class="btn btn-primary" value="Submit">Save</button>
    </div>
</g:form>
