package blooddonation

import com.BloodDonation.Status

class Transaction {
    Status status
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static belongsTo = [patient:Patient, blood:Bloodrecord]
    static constraints = {
        createdBy nullable: true
        updatedBy nullable: true
    }
    def beforeinsert = {
        dateCreated = new Date()
    }
    def beforeupdate = {
        lastUpdated = new Date()
    }
}
