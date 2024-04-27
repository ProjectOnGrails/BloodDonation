package blooddonation

import com.BloodDonation.Status

class Transaction {
    Status status
    static belongsTo = [patient:Patient, blood:Bloodrecord]
    static constraints = {
    }
}
