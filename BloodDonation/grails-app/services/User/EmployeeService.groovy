package User

import blooddonation.Doner
import grails.gorm.transactions.Transactional

@Transactional
class EmployeeService {
    def springSecurityService
    def show()
    {
        def employees = Employee.list()
        return employees
    }

    def save(params)
    {
        Employee employee = new Employee(params)
        def user = springSecurityService.currentUser
        employee.createdBy = user
        if (employee.save()) {
            return [message: "Data saved successfully"]
        } else {
            return [message: "Data cannot be saved ${employee.errors} "]
        }
    }

    def delete(Long id)
    {
        def employee = Employee.get(id)
        if (employee) {
            employee.delete()
            return [message: "Employee deleted successfully"]
        } else {
            return [message: "Employee not found"]
        }
    }

    def update(params)
    {
        def user = springSecurityService.currentUser
        def employeeId = params.id
        Employee employeeInstance = Employee.findById(employeeId)
        if(employeeInstance){
            employeeInstance.properties = params
            employeeInstance.updatedBy = user
            if(employeeInstance.save(flush:true)) {
                return [message: "Employee updated successfully"]

            }else {
                return [message: "Error while updating employee"]

            }
        }
        else
        {
            return [message: "Not found data"]
        }
    }
}
