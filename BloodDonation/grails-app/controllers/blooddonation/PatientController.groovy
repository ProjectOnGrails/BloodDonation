package blooddonation

import grails.gorm.transactions.Transactional

class PatientController {
    def patientService
    def index()
    {
        def patients = patientService.show()
        [patients:patients]
    }
    def save()
    {
        try {
            def result = patientService.save(params)
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
            def result = patientService.delete(id)
            flash.message = result.message
            redirect(action: "index")

        }
        catch (Exception e) {
            println e;
            flash.message = "Cannot connect to databaase"
            redirect(action: "index")
        }
    }

    def edit()
    {
        def id = params.id
        Patient patientInstance = Patient.findById(id)
        render(template: "edit",model: [data:patientInstance])
    }

    @Transactional
    def update() {
        try {
            def result = patientService.update(params)
            flash.message= result.message
            redirect(action: "index")
        }catch(e) {
            flash.error = "Patient update failed: ${e.message}"
            redirect(action: "index")
        }

    }
}
