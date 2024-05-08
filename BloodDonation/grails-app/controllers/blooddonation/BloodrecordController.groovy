package blooddonation

import grails.gorm.transactions.Transactional

class BloodrecordController {
    def bloodrecordService

    def index()
    {
        def doners = bloodrecordService.doner()
        def blood = bloodrecordService.blood()
        [doners:doners, bloods:blood ]
    }
    def save()
    {
        try {
            def result =bloodrecordService.save(params)
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
    def delete(Long id)
    {
        try{
            def result = bloodrecordService.delete(id)
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
        Bloodrecord recordInstance = Bloodrecord.findById(id)
        def doner = Doner.findAll()
        render(template: "edit", model: [data:recordInstance, doners:doner])
    }

    @Transactional
    def update()
    {
        try{
            def result = bloodrecordService.update(params)
            flash.message = result.message
            redirect(action: "index")
        }
        catch (Exception e)
        {
            flash.message = "Cannot connect to database"
            redirect(action: "index")
        }
    }

}
