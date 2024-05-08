package blooddonation

import grails.gorm.transactions.Transactional

class TransactionController {
    def transactionService
    def index()
    {
        def transactions = transactionService.index()
        def patients = transactionService.patient_data()
        def blood = transactionService.blood_data()
        [transactions:transactions, patients:patients, blood:blood]
    }

    def save()
    {
        try {
            def result =transactionService.save(params)
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
            def result = transactionService.delete(id)
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
        Transaction instance = Transaction.findById(id)
        def blood = Bloodrecord.findAll()
        def patient = Patient.findAll()
        render(template: "edit", model: [data:instance, bloods:blood, patients:patient])
    }
    @Transactional
    def update()
    {
        try{
            def result = transactionService.update(params)
            flash.message = result.message
            redirect(action: "index")
        }
        catch (Exception e)
        {
            println(e)
            flash.message = "Cannot connect to database ${e.message}"
            redirect(action: "index")
        }
    }
}
