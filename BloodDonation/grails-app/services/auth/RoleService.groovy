package auth

import com.BloodDonation.Role
import grails.gorm.transactions.Transactional

@Transactional
class RoleService {

    def save(params)
    {
        Role role = new Role(params)
        if (role.save()) {
            return [message: "Data saved successfully"]

        } else {
            return [message: "Data cannot be saved"]
        }
    }

    def show()
    {
        def roles = Role.list()
        return roles
    }

    def delete(Long id)
    {
        def role = Role.get(id)
        if (role) {
            role.delete()
            return [message: "Role deleted successfully"]
        } else {
            return [message: "Role not found"]
        }
    }


    def update(params)
    {
        def roleId = params.id
        def roleAuthority = params.authority
        Role roleInstance = Role.findById(roleId)
        if(roleInstance) {
            roleInstance.authority = roleAuthority
            if (roleInstance.save(flush: true)) {
                return [message: "Role updated successfully"]

            } else  {
                return [message: "Role not updated"]
            }
        }
        else
        {
            return [message: "Not found data"]
        }
    }
}
