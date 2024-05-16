package User

import blooddonation.Doner
import com.BloodDonation.Role
import com.BloodDonation.User
import com.BloodDonation.UserRole
import grails.gorm.transactions.Transactional

@Transactional
class EmployeeService {
    def springSecurityService
    def show()
    {
        def employees = Employee.list()
        return employees
    }
    def roledata()
    {
        def data = Role.findAll()
        return data
    }

    def save(params)
    {
        Employee employee = new Employee(params)
        def role = Role.findByAuthority(params.role)
        def currentuser = springSecurityService.currentUser
        employee.createdBy = currentuser
        if (employee.save()) {
            User user = new User(username: params.username, password: params.password)
            user.employee = employee
            if(user.save(failOnError: true))
            {
                def userrole = new UserRole(user: user, role: role).save(failOnError: true)
                return [message: "Data saved successfully"]
            }
        } else {
            return [message: "Data cannot be saved ${employee.errors} "]
        }
    }

    def delete(Long id)
    {
        def employee = Employee.get(id)
        if (employee) {
            def user = employee.user
            if (user) {
                UserRole.removeAll(user)
                user.delete(failOnError: true)
            }
            employee.delete(failOnError: true)
            return [message: "Employee deleted successfully"]
        } else {
            return [message: "Employee not found"]
        }
    }

    def update(params)
    {
        def employeeId = params.id
        Employee employeeInstance = Employee.findById(employeeId)
        if (employeeInstance) {
            def currentUser = springSecurityService.currentUser
            employeeInstance.properties = params
            employeeInstance.updatedBy = currentUser.username

            def userInstance = employeeInstance.user
            if (userInstance) {
                userInstance.username = params.username
                userInstance.password = params.password

                def role = Role.findByAuthority(params.role)
                UserRole.removeAll(userInstance)
                UserRole.create(userInstance, role, true)
            }

            if (employeeInstance.save(failOnError: true)) {
                return [message: "Employee updated successfully"]
            } else {
                return [message: "Error while updating employee. ${employeeInstance.errors}"]
            }
        } else {
            return [message: "Employee not found"]
        }
    }
}
