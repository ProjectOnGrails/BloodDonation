package blooddonation

import com.BloodDonation.BloodGroup

class Bloodrecord {
    BloodGroup bloodGroup
    Date collected_date
    String collection_type
    int quantiy
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasOne = [transaction:Transaction]
    static belongsTo = [doner:Doner]
    static constraints = {
    }
}
