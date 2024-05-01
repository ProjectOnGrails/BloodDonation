package blooddonation

import grails.gorm.transactions.Transactional

@Transactional
class DonerService {
    def springSecurityService
    def show()
    {
        def doners = Doner.list()
        return doners
    }

    def save(params)
    {
        Doner doner = new Doner(params)
        def user = springSecurityService.currentUser
        doner.createdBy = user
        if (doner.save()) {
            return [message: "Data saved successfully"]
        } else {
            return [message: "Data cannot be saved "]
        }
    }

    def delete(Long id)
    {
        def doner = Doner.get(id)
        if (doner) {
            doner.delete()
            return [message: "Doner deleted successfully"]
        } else {
            return [message: "Doner not found"]
        }
    }

    def update(params)
    {
        def user = springSecurityService.currentUser
        def donerId = params.id
        Doner donerInstance = Doner.findById(donerId)
        if(donerInstance){
            donerInstance.properties = params
            donerInstance.updatedBy = user
            if(donerInstance.save(flush:true)) {
                return [message: "Doner updated successfully"]

            }else {
                return [message: "Error while updating doners"]

            }
        }
    }
}
