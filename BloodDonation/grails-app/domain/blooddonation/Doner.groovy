package blooddonation

import com.BloodDonation.BloodGroup
import com.BloodDonation.Gender

class Doner {
    String name
    BloodGroup bloodgroup
    String last_time_donated
    String address
    int age
    Gender gender
    String phn
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasOne = [blood:Bloodrecord]
    static constraints = {
        createdBy nullable: true
        updatedBy nullable: true
        blood nullable: true
    }
    def beforeinsert = {
        dateCreated = new Date()
    }
    def beforeupdate = {
        lastUpdated = new Date()
    }
}
