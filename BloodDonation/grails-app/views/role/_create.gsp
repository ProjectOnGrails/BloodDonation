<g:form controller="role" action="save" method="POST">
    <div class="form-group row g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="authority" name="authority" required>
                <label for="authority">Authority:</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" value="Submit">Save</button>
    </div>
</g:form>
