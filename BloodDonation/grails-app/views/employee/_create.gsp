<%@ page import="com.BloodDonation.Gender" %>
<g:form action="save">
    <div class="form-group row g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="name" name="name" required>
                <label for="name">Name:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col-md-6">
            <div class="form-floating mb-2">
                <input type="number" class="form-control" id="age" name="age" required>
                <label for="age">Age:</label>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-floating mb-2">
                <select class="form-control" id="gender" name="gender" required>
                    <option value="">Select</option>
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
                <input type="text" class="form-control" id="phone" name="phone" required>
                <label for="phone">Phone:</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="email" name="email" required>
                <label for="email">Email:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <input type="text" class="form-control" id="username" name="username" required>
                <label for="username">Username:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <input type="password" class="form-control" id="password" name="password" required>
                <label for="password">Password:</label>
            </div>
        </div>
    </div>
    <div class="form-group row g-3 mb-2">
        <div class="col">
            <div class="form-floating mb-2">
                <g:select name="role" from="${roles.authority}" class="form-control" required="true" noSelection="['': 'Select Role']"/>
                <label for="role">Role:</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" value="Submit">Save</button>
    </div>
</g:form>