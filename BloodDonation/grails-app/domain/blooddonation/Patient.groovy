package blooddonation

import com.BloodDonation.BloodGroup
import com.BloodDonation.Gender

class Patient {
    String name
    BloodGroup bloodgroup
    int quantity_req
    int age
    Gender gender
    String hospitalname
    String phn
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasOne = [transaction:Transaction]
    static constraints = {
        createdBy nullable: true
        updatedBy nullable: true
        transaction nullable: true
    }
    def beforeinsert = {
        dateCreated = new Date()
    }
    def beforeupdate = {
        lastUpdated = new Date()
    }
}
