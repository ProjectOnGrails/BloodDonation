package blooddonation

import grails.gorm.transactions.Transactional


class DonerController {
    def springSecurityService
    def index()
    {
        def doners = Doner.list()
        [doners:doners]
    }
    def save()
    {
        try {
            Doner doner = new Doner(params)
            def user = springSecurityService.currentUser
            doner.createdBy = user
            if (doner.save()) {
                flash.message = "Data saved successfully"
                redirect(action: "index")
            } else {
                flash.message = "Data cannot be saved ${doner.errors}"
                redirect(action: "index")
            }
        }
        catch (Exception e) {
            println e;
            flash.message = "Cannot connect to databaase :${e.message}"
            redirect(action: "index")
        }
    }
    @Transactional
    def delete(Long id) {
        try {
            def doner = Doner.get(id)
            if (doner) {
                doner.delete()
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
        Doner donerInstance = Doner.findById(id)
        render(template: "edit",model: [data:donerInstance])
    }

    @Transactional
    def update() {
        def user = springSecurityService.currentUser
        def donerId = params.id
        Doner donerInstance = Doner.findById(donerId)
        if(donerInstance){
            try {
                donerInstance.properties = params
                donerInstance.updatedBy = user
                if(donerInstance.save(flush:true)) {
                    flash.message = "${message(code: 'default.updated.message')}"
                    redirect(action:"index")
                }else {
                    flash.message = "Error while updating record."
                    redirect(action: "index")
                }
            }catch(e) {
                flash.error = "Doner update failed: ${e.message}"
                redirect(action: "index")
            }
        }
        else
        {
            flash.error = "${message(code: 'default.not.found.message')}"
            redirect(action: "index")
        }
    }


}
