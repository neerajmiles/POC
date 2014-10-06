import com.miles.login.auth.Role
import com.miles.login.auth.User
import com.miles.login.auth.UserRole
import com.miles.login.auth.RequestMap

class BootStrap {

    def init = { servletContext ->

        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

        def adminUser = new User(username: 'admin', password: 'password',email: "neeraj1@something.com")
        adminUser.save(flush: true)
        def testUser = new User(username: 'user', password: 'password',email: "sandeep.morkhade@miles.in")
        testUser.save(flush: true)

        def testUser2 = new User(username: 'user1', password: 'password',email: "neeraj.yadav@miles.in")
        testUser2.save(flush: true)


        UserRole.create testUser, userRole, true
        UserRole.create adminUser, adminRole, true

        for (String url in [
                '/', '/index', '/index.gsp', '*//**//*favicon.ico','/assets*//**',
                '*//**//*js*//**', '*//**//*css*//**', '*//**//*images*//**',
                '/login', '/login.*', '/login*//*',
                '/logout', '/logout.*', '/logout*//*','/dbconsole*//*']) {
            new RequestMap(url: url, configAttribute: 'permitAll').save()
        }
        new RequestMap(url: '/requestMap/**', configAttribute: 'ROLE_ADMIN,IS_AUTHENTICATED_FULLY').save(flush:true)
    }
    def destroy = {
    }
}
