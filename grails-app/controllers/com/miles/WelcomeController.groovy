package com.miles



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.security.access.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_USER','ROLE_ADMIN','IS_AUTHENTICATED_FULLY'])
class WelcomeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Welcome.list(params), model:[welcomeInstanceCount: Welcome.count()]
    }

    def show(Welcome welcomeInstance) {
        respond welcomeInstance
    }

    def create() {
        respond new Welcome(params)
    }

    @Transactional
    def save(Welcome welcomeInstance) {
        if (welcomeInstance == null) {
            notFound()
            return
        }

        if (welcomeInstance.hasErrors()) {
            respond welcomeInstance.errors, view:'create'
            return
        }

        welcomeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'welcome.label', default: 'Welcome'), welcomeInstance.id])
                redirect welcomeInstance
            }
            '*' { respond welcomeInstance, [status: CREATED] }
        }
    }

    def edit(Welcome welcomeInstance) {
        respond welcomeInstance
    }

    @Transactional
    def update(Welcome welcomeInstance) {
        if (welcomeInstance == null) {
            notFound()
            return
        }

        if (welcomeInstance.hasErrors()) {
            respond welcomeInstance.errors, view:'edit'
            return
        }

        welcomeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Welcome.label', default: 'Welcome'), welcomeInstance.id])
                redirect welcomeInstance
            }
            '*'{ respond welcomeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Welcome welcomeInstance) {

        if (welcomeInstance == null) {
            notFound()
            return
        }

        welcomeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Welcome.label', default: 'Welcome'), welcomeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'welcome.label', default: 'Welcome'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
