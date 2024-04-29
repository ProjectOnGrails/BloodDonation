package blooddonation

import grails.gorm.transactions.Transactional

class PatientController {
    def springSecurityService
    def index()
    {
        def patients = Patient.list()
        [patients:patients]
    }
    def save()
    {
        try {
            Patient patient = new Patient(params)
            def user = springSecurityService.currentUser
            patient.createdBy = user
            if (patient.save()) {
                flash.message = "Data saved successfully"
                redirect(action: "index")
            } else {
                flash.message = "Data cannot be saved ${patient.errors}"
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
            def patient = Patient.get(id)
            if (patient) {
                patient.delete()
                flash.message = "Patient Deleted Successfully"
            } else {
                flash.message = "Patient not found"
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
        Patient patientInstance = Patient.findById(id)
        render(template: "edit",model: [data:patientInstance])
    }

    @Transactional
    def update() {
        def user = springSecurityService.currentUser
        def patientId = params.id
        Patient patientInstance = Patient.findById(patientId)
        if(patientInstance){
            try {
                patientInstance.properties = params
                patientInstance.updatedBy = user
                if(patientInstance.save(flush:true)) {
                    flash.message = "${message(code: 'default.updated.message')}"
                    redirect(action:"index")
                }else {
                    flash.message = "Error while updating record."
                    redirect(action: "index")
                }
            }catch(e) {
                flash.error = "Patient update failed: ${e.message}"
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
