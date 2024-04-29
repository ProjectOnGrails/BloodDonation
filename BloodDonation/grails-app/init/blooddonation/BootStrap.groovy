package blooddonation

import User.Employee
import com.BloodDonation.Requestmap
import com.BloodDonation.Role
import com.BloodDonation.User
import com.BloodDonation.Gender
import com.BloodDonation.UserRole

class BootStrap {

    def init = { servletContext ->
        for (String url in [
                '/', '/error', '/index', '/index.gsp', '/**/favicon.ico', '/shutdown',
                '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*', '/doner/**', '/patient/**']) {
            new Requestmap(url: url, configAttribute: 'permitAll').save()
        }
        new Requestmap(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()

        def user = new User(
                username: "admin",
                password: "admin"
        )
        def role = new Role(
                authority: "ROLE_ADMIN"
        ).save()
        new Employee(name:"Smriti Guragain", age: 23, gender: Gender.Female, joindate: new Date(), phone:"9825111243", email: "smritiguragain111@gmail.com", createdBy: "Smriti Guragain", user: user).save()
        new UserRole(
                user: user,
                role: role
        ).save()
    }
    def destroy = {
    }
}
