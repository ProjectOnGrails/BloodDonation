<%@ page import="com.BloodDonation.BloodGroup" %>
<!-- Modal -->

        <g:form>
        <div class="form-group row g-3 mb-2">
            <div class="col-md">
                 <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="bloodGroup" name="bloodGroup" value="${data.bloodGroup}" disabled required>
                    <label for="bloodGroup">Blood Group:</label>
                 </div>
            </div>
            <div class="col-md">
                <div class="form-floating mb-2">
                    <input type="date" class="form-control" id="collected_date" name="collected_date" value="${data.collected_date}" disabled required>
                    <label for="collected_date">Collected Date:</label>
                </div>
        </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col-8">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="collection_type" name="collection_type" value="${data.collection_type}" disabled required>
                    <label for="collection_type">Collection Type:</label>
                </div>
            </div>
            <div class="col-4">
                <div class="form-floating mb-2">
                    <input type="number" class="form-control" id="quantity" name="quantity" value="${data.quantity}" disabled required>
                    <label for="quantity">Quantity:</label>
                </div>
            </div>
        </div>
        <div class="form-group g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="doner" name="doner" value="${data.doner.name}" disabled required>
                    <label for="doner">Doner</label>
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
