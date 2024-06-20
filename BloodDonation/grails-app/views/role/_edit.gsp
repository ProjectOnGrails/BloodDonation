<!-- Modal -->

                <g:form controller="role" action="update" id="${data.id}">
                    <div class="form-group row g-3 mb-2">
                        <div class="col">
                            <div class="form-floating mb-2">
                                <input type="number" class="form-control" id="identity" name="identity" value="${data.id}" disabled required>
                                <label for="identity">Role Id:</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row g-3 mb-2">
                        <div class="col">
                            <div class="form-floating mb-2">
                                <input type="text" class="form-control" id="authority" name="authority" value="${data.authority}" required>
                                <label for="authority">Authority:</label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" value="Submit" id="edit">Update</button>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
</div>
