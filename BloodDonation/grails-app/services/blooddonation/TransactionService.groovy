package blooddonation

import grails.gorm.transactions.Transactional

@Transactional
class TransactionService {
    def springSecurityService
    def patient_data()
    {
        def data =  Patient.findAll()
        return data
    }
    def blood_data()
    {
        def data1 = Bloodrecord.findAll()

        return data1
    }
    def index()
    {
        def data2 = Transaction.list()
        return data2
    }
    def save(params)
    {
        Transaction transaction = new Transaction(params)
        def user = springSecurityService.currentUser
        transaction.createdBy = user
        if (transaction.save()) {
            return [message: "Data saved successfully"]
        } else {
            return [message: "Data cannot be saved ${transaction.errors} "]
        }
    }
    def delete(Long id)
    {
        def data = Transaction.get(id)
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
        def transactionId = params.id
        Transaction instance = Transaction.findById(transactionId)
        if(instance){
            instance.properties = params
            instance.updatedBy = user
            if(instance.save(flush:true)) {
                return [message: "Transaction updated successfully"]

            }else {
                return [message: "Error while updating transactions"]

            }
        }
        else
        {
            return [message: "Not found data"]
        }
    }
}
