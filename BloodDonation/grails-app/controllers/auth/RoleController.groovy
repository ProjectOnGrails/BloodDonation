package auth

import com.BloodDonation.Role
import grails.gorm.transactions.Transactional

class RoleController {

    def roleService
    def index()
    {
        def roles = roleService.show()
        [roles: roles]
    }
    def save() {
        try {
            def result = roleService.save(params)
            flash.message = result.message
            redirect(action: "index")
        }
        catch (Exception e) {
            println e;
            flash.message = "Cannot connect to databaase"
        }
    }

    @Transactional
    def delete(Long id) {
        try {
            def result = roleService.delete(id)
            flash.message = result.message
        }
        catch (Exception e) {
            println e;
            flash.message = "Cannot connect to databaase"
        }
        redirect(action: "index")

    }
    def edit()
    {
        def id = params.id
        Role roleInstance=Role.findById(id)
        render(template: "edit",model: [data:roleInstance])
    }
    @Transactional

    def update() {
        try{

            def result = roleService.update(params)
            flash.message = result.message
            redirect(action:"index")
        }
        catch(Exception e)
        {
            flash.error = "${message(code: 'default.not.found.message', args: [message(code: 'Role'), ""])}"
            redirect(action: "index")
        }
    }
}
