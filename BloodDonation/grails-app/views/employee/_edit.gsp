<%@ page import="com.BloodDonation.Gender" %>
<!-- Modal -->


    <g:form controller="employee" action="update" id="${data.id}">
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="name" name="name" value="${data.name}" required>
                    <label for="name">Name:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col-md-6">
                <div class="form-floating mb-2">
                    <input type="number" class="form-control" id="age" name="age" value="${data.age}" required>
                    <label for="age">Age:</label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-floating mb-2">
                    <select class="form-control" id="gender" name="gender" required>
                        <option value="${data.gender}">${data.gender}</option>
                        <g:each in="${com.BloodDonation.Gender.values()}" var="gender">
                            <option value="${gender}">${gender}</option>
                        </g:each>
                    </select>
                    <label for="gender">Gender:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="phone" name="phone" value="${data.phone}" required>
                    <label for="phone">Phone:</label>
                </div>
            </div>
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="email" name="email" value="${data.email}" required>
                    <label for="email">Email:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="text" class="form-control" id="username" name="username" value="${data.user.username}" required>
                    <label for="username">Username:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <input type="password" class="form-control" id="password" name="password" value="${data.user.password}" required>
                    <label for="password">Password:</label>
                </div>
            </div>
        </div>
        <div class="form-group row g-3 mb-2">
            <div class="col">
                <div class="form-floating mb-2">
                    <g:select name="role" from="${roles}" optionKey="authority" optionValue="authority" class="form-control" value="${data.user.authorities.authority}" required="true" noSelection="['': 'Select Role']"/>
                    <label for="role">Role:</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary" value="Submit" id="edit">Update</button>
        </div>
    </g:form>
