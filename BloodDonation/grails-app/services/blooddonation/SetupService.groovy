package blooddonation
import User.Employee
import com.BloodDonation.Gender
import com.BloodDonation.Role
import com.BloodDonation.User
import com.BloodDonation.UserRole
import grails.gorm.transactions.Transactional

@Transactional
class SetupService {

    def initialEntry() {

        def user = User.findByUsername("admin")
        if(!user)
        {
            user = new User(
                    username: "admin",
                    password: "admin" )
        }

        def role = Role.findByAuthority("ROLE_ADMIN")
        if(!role)
        {
            role = new Role(
                    authority: "ROLE_ADMIN"
            ).save(failOnError:true, flush:true)
        }
        new Employee(name:"Smriti Guragain", age: 23, gender: Gender.Female, joindate: new Date(), phone:"9825111243", email: "smritiguragain111@gmail.com", createdBy: "Smriti Guragain", user: user).save()

        UserRole.create(user,role,true)

    }
}
