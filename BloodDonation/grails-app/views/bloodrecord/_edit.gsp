<%@ page import="com.BloodDonation.BloodGroup" %>
<!-- Modal -->
<div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="editModalLabel">Update BloodRecord</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <g:form controller="bloodrecord" action="update" id="${data.id}">
                        <div class="form-group">
                            <label for="bloodGroup">Blood Group:</label>${data.bloodGroup}
                            <select class="form-control" id="bloodGroup" name="bloodGroup" required>
                                <option value="${data.bloodGroup}">${data.bloodGroup}</option>
                                <g:each in="${com.BloodDonation.BloodGroup.values()}" var="bloodgroup">
                                    <option value="${bloodGroup}">${bloodGroup}</option>
                                </g:each>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="collected_date">Last Time Donated:</label>
                            <input type="date"  class="form-control" id="collected_date" name="collected_date" value="${data.collected_date}" required>
                        </div>
                        <div class="form-group">
                            <label for="collection_type">Collection Type:</label>
                            <input type="text" class="form-control" id="collection_type" name="collection_type" value="${data.collection_type}" required>
                        </div>
                        <div class="form-group">
                            <label for="quantity">Quantity:</label>
                            <input type="text" class="form-control" id="quantity" name="quantity" value="${data.quantity}" required>
                        </div>
                        <div class="form-group">
                            <label for="doner">Doner</label>
                            <select class="form-control" id="doner" name="doner">
                                <option value="${data.doner.id}">${data.doner.name}</option>
                                <g:each in="${doners}" var="doner">
                                    <option value="${doner.id}">${doner.name}</option>
                                </g:each>
                            </select>
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