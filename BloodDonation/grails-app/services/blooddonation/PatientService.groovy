package blooddonation

import grails.gorm.transactions.Transactional

@Transactional
class PatientService {
    def springSecurityService

    def show()
    {
        def patients = Patient.list()
        return patients
    }

    def save(params)
    {
        Patient patient = new Patient(params)
        def user = springSecurityService.currentUser
        patient.createdBy = user
        if (patient.save()) {
            return [message: "Data saved successfully"]
        } else {
            return [message: "Data cannot be saved ${patient.errors} "]
        }
    }

    def delete(Long id)
    {
        def patient = Patient.get(id)
        if (patient) {
            patient.delete()
            return [message: "Patient deleted successfully"]
        } else {
            return [message: "Patient not found"]
        }
    }

    def update(params)
    {
        def user = springSecurityService.currentUser
        def patientId = params.id
        Patient patientInstance = Patient.findById(patientId)
        if(patientInstance)
        {
            patientInstance.properties = params
            patientInstance.updatedBy = user
            if(patientInstance.save(flush:true)) {
                return [message: "Patient updated successfully"]
            }else {
                return [message: "Error while updating patient"]
            }
        }
        else
        {
            return [message: "Not found data"]
        }
    }
}
