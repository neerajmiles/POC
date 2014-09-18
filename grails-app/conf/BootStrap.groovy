import com.miles.login.auth.Role
import com.miles.login.auth.User
import com.miles.login.auth.UserRole

class BootStrap {

    def init = { servletContext ->

       /* def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def adminUser = new User(username: 'admin', password: 'password',email: "neeraj1@something.com")
        adminUser.save(flush: true)
        def testUser = new User(username: 'user', password: 'password',email: "neeraj1@something.com")
        testUser.save(flush: true)

        UserRole.create testUser, userRole, true

        UserRole.create adminUser, adminRole, true
*/
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def adminUser = new User(username: 'admin', password: 'password',email: "neeraj1@something.com")
        adminUser.save(flush: true)
        def testUser = new User(username: 'user', password: 'password',email: "sandeep.morkhade@miles.in")
        testUser.save(flush: true)

        UserRole.create testUser, userRole, true
        UserRole.create adminUser, adminRole, true


    }
    def destroy = {
    }
}
