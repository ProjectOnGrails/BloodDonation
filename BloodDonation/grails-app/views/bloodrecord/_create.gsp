<%@ page import="com.BloodDonation.BloodGroup" %>

<g:form action="save">
    <div class="form-group">
        <label for="bloodGroup">Blood Group:</label>
        <select class="form-control" id="bloodGroup" name="bloodGroup" required>
            <option value="">Select</option>
            <g:each in="${com.BloodDonation.BloodGroup.values()}" var="bloodgroup">
                <option value="${bloodgroup}">${bloodgroup}</option>
            </g:each>
        </select>
    </div>
    <div class="form-group">
        <label for="collected_date">Collection Date:</label>
        <input type="date" class="form-control" id="collected_date" name="collected_date" required>
    </div>
    <div class="form-group">
        <label for="collection_type">Collection Type:</label>
        <input type="text" class="form-control" id="collection_type" name="collection_type" required>
    </div>
    <div class="form-group">
        <label for="quantity">Quantity:</label>
        <input type="text" class="form-control" id="quantity" name="quantity" required>
    </div>
    <div class="form-group">
        <label for="doner">Doner</label>
        <select class="form-control" id="doner" name="doner">
            <option value="">Select Doner</option>
            <g:each in="${doners}" var="doner">
                <option value="${doner.id}">${doner.name}</option>
            </g:each>
        </select>
    </div>

    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" value="Submit">Save</button>
    </div>
</g:form>
