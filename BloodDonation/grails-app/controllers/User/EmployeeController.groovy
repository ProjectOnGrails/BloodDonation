package User

import blooddonation.Patient
import com.BloodDonation.Role
import grails.gorm.transactions.Transactional

class EmployeeController {
    def employeeService
    def index()
    {
        def employees = employeeService.show()
        [employees:employees]
    }
    def create()
    {
        def roles = employeeService.roledata()
        render(template: "create",model: [roles:roles])
    }

    def save()
    {
        try{
            def result = employeeService.save(params)
            flash.message = result.message
            redirect(action:"index")
        }
        catch (Exception e)
        {
            println e;
            flash.message = "Cannot connect to databaase :${e.message}"
            redirect(action: "index")
        }
    }
    def view()
    {
        def id = params.id
        Employee employeeInstance = Employee.findById(id)
        def roles = Role.findAll()
        render(template: "view",model: [data:employeeInstance, roles:roles])
    }
    def edit()
    {
        def id = params.id
        Employee employeeInstance = Employee.findById(id)
        def roles = Role.findAll()
        render(template: "edit",model: [data:employeeInstance, roles:roles])
    }

    @Transactional
    def delete(Long id)
    {
        try{
            def result = employeeService.delete(id)
            flash.message = result.message
            redirect(action: "index")
        }
        catch(Exception e)
        {
            println e;
            flash.message = "Cannot connect to databaase"
            redirect(action: "index")
        }
    }

    @Transactional
    def update()
    {
        try{
            def result = employeeService.update(params)
            flash.message= result.message
            redirect(action: "index")
        }
        catch (Exception e)
        {
            flash.message= "Cannot connect to database"
            redirect(action: "index")
        }
    }
}
