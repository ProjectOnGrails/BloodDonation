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
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasOne = [transaction:Transaction]
    static constraints = {
    }
}
