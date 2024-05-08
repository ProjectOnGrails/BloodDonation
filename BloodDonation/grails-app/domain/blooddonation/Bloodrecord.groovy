package blooddonation

import com.BloodDonation.BloodGroup

class Bloodrecord {
    BloodGroup bloodGroup
    String collected_date
    String collection_type
    int quantity
    Date dateCreated
    Date lastUpdated
    String createdBy
    String updatedBy
    static hasOne = [transaction:Transaction]
    static belongsTo = [doner:Doner]
    static constraints = {
        transaction nullable: true
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
