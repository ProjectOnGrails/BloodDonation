package User

import blooddonation.Patient
import grails.gorm.transactions.Transactional

class EmployeeController {
    def employeeService
    def index()
    {
        def employees = employeeService.show()
        [employees:employees]
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
    def edit()
    {
        def id = params.id
        Employee employeeInstance = Employee.findById(id)
        render(template: "edit",model: [data:employeeInstance])
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
