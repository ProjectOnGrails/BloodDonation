package auth

import com.BloodDonation.Role
import grails.gorm.transactions.Transactional

class RoleController {

    def index()
    {
        def roles = Role.list()
        [roles: roles]
    }
    def save() {
        try {

            Role role = new Role(params)
            if (role.save()) {
                flash.message = "Data saved successfully"

            } else {
                flash.message = "Data cannot be saved"
            }
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
            def role = Role.get(id)
            if (role) {
                role.delete()
                flash.message = "Role Deleted Successfully"
            } else {
                flash.message = "Role not found"
            }
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
        Role roleInstance = Role.findById(id)
        render(template: "edit",model: [data:roleInstance])
    }
    @Transactional

    def update() {
        def roleId = params.id
        def roleAuthority = params.authority
        Role roleInstance = Role.findById(roleId)
        if(roleInstance){
            try {
                roleInstance.authority = roleAuthority
                if(roleInstance.save(flush:true)) {
                    flash.message = "${message(code: 'default.updated.message', args: [message(code: 'Role'), roleInstance.authority])}"
                    redirect(action:"index")
                }else {
                    flash.message = "Error while updating role."
                    redirect(action: "index")
                }
            }catch(e) {
                flash.error = "Role update failed: ${e.message}"
                redirect(action: "index")
            }
        }
        else
        {
            flash.error = "${message(code: 'default.not.found.message', args: [message(code: 'Role'), ""])}"
            redirect(action: "index")
        }
    }
}
