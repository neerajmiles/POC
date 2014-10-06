package com.miles

import com.miles.login.auth.User
import grails.converters.JSON
import groovy.json.JsonBuilder

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.security.access.annotation.Secured

@Transactional(readOnly = true)

@Secured('permitAll')

class WelcomeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Welcome.list(params), model:[welcomeInstanceCount: Welcome.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }


    /* Org
    def search(String user,Integer max)
    {
        if(!user){
            user=params.user
            println "User"+user
        }
        params.max = Math.min(max ?: 10, 100)
        respond User.findAllByUsernameLike("${user}%"), model:[userInstanceCount: User.count()]

    }*/

    def search(String user,Integer max)
    {
        if(!user){
            user=params.user
            println "User"+user
        }
        params.max = Math.min(max ?: 10, 100)
       // respond User.findAllByUsernameLike("${user}%"), model:[userInstanceCount: User.count()]
       // render User.findAll() as JSON

        def data = User.findAll() as JSON
        System.out.println("JSON Data : " +data);
        respond User.findAllByUsernameLike("${user}%"), model:[userInstanceCount: User.count()]
    }

    def searchadmin(String user,Integer max)
    {
        if(!user){
            user=params.user
            println "User"+user
        }
        params.max = Math.min(max ?: 10, 100)
        respond User.findAllByUsernameLike("${user}%"), model:[userInstanceCount: User.count()]

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

    def edit(User userInstance) {
        respond userInstance
    }


   /* def edit(String id) {
        //log.info(email)
        println "URL :  " +id
        respond User.findById(id)


    }*/


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
