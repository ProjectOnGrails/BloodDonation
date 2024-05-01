package blooddonation

import grails.gorm.transactions.Transactional


class DonerController {
    def donerService
    def index()
    {
        def doners = donerService.show()
        [doners:doners]
    }
    def save()
    {
        try {
            def result = donerService.save(params)
            flash.message = result.message
            redirect(action: "index")
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
            def result = donerService.delete(id)
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
        Doner donerInstance = Doner.findById(id)
        render(template: "edit",model: [data:donerInstance])
    }

    @Transactional
    def update()
    {
        try{

            def result = donerService.update(params)
            flash.message= result.message
            redirect(action: "index")
        }
        catch (Exception e)
        {
            flash.error = "${message(code: 'default.not.found.message')}"
            redirect(action: "index")
        }
    }
}
