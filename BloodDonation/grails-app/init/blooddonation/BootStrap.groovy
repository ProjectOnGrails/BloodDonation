package blooddonation

import User.Employee
import com.BloodDonation.Requestmap
import com.BloodDonation.Role
import com.BloodDonation.User
import com.BloodDonation.Gender
import com.BloodDonation.UserRole

class BootStrap {
    def setupService
    def init = { servletContext ->
        for (String url in [
                '/', '/error', '/index', '/index.gsp', '/**/favicon.ico', '/shutdown',
                '/assets/**', '/**/js/**', '/**/css/**', '/**/images/**',
                '/login', '/login.*', '/login/*',
                '/logout', '/logout.*', '/logout/*', '/doner/**', '/patient/**', '/bloodrecord/**', '/transaction/**']) {
            new Requestmap(url: url, configAttribute: 'permitAll').save()
        }
        new Requestmap(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/employee/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/user/**', configAttribute: 'ROLE_ADMIN').save()
        new Requestmap(url: '/userRole/**', configAttribute: 'ROLE_ADMIN').save()
    setupService.initialEntry()
    }
    def destroy = {
    }
}
