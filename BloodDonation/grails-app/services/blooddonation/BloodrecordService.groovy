package blooddonation

import grails.gorm.transactions.Transactional

@Transactional
class BloodrecordService {
    def springSecurityService
    def blood()
    {
        def data =  Bloodrecord.list()
        return data
    }
    def doner()
    {
        def data1 = Doner.findAll()
        return data1
    }
    def save(params)
    {
        Bloodrecord blood = new Bloodrecord(params)
        def user = springSecurityService.currentUser
        blood.createdBy = user
        if (blood.save()) {
            return [message: "Data saved successfully"]
        } else {
            return [message: "Data cannot be saved ${blood.errors} "]
        }
    }
    def delete(Long id)
    {
        def data = Bloodrecord.get(id)
        if(data)
        {
            data.delete()
            return [message: "Record deleted successfully"]
        }
        else
        {
            return [message: "Record not found"]
        }
    }

    def update(params)
    {
        def user = springSecurityService.currentUser
        def bloodId = params.id
        Bloodrecord bloodInstance = Bloodrecord.findById(bloodId)
        if(bloodInstance){
            bloodInstance.properties = params
            bloodInstance.updatedBy = user
            if(bloodInstance.save(flush:true)) {
                return [message: "Record updated successfully"]

            }else {
                return [message: "Error while updating records"]

            }
        }
        else
        {
            return [message: "Not found data"]
        }
    }
}
