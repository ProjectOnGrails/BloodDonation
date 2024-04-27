package User

import com.BloodDonation.Gender
import com.BloodDonation.User

class Employee {
    String name
    int age
    Gender gender
    Date joindate
    String phone
    String email
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasOne = [user: User]
    static constraints = {
        lastUpdated nullable: true
        updatedBy nullable:  true
    }
    def beforeinsert = {
        dateCreated = new Date()
    }
    def beforeupdate = {
        lastUpdated = new Date()
    }

}
