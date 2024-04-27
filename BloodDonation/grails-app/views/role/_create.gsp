<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="addRole">
    Create Role
</button>
<hr>

<!-- Modal -->
<div class="modal fade" id="exampleModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Add Role</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="modal-body">
                    <g:form controller="role" action="save" method="POST">
                        <div class="form-group">
                            <label for="authority">Authority:</label>
                            <input type="text" class="form-control" id="authority" name="authority" required>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="Submit" class="btn btn-primary" value="Submit">Save</button>

                        </div>
                        <!-- Add more form fields as needed -->
                    </g:form>

                </div>
            </div>


        </div>
    </div>
</div>