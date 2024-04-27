package blooddonation

import com.BloodDonation.BloodGroup
import com.BloodDonation.Gender

class Doner {
    String name
    BloodGroup bloodgroup
    Date last_time_donated
    String address
    int age
    Gender gender
    String phn
    String email
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static belongsTo = [blood:Bloodrecord]
    static constraints = {
    }
}
