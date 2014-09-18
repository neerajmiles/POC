package com.miles.login.auth

import groovy.util.logging.Log4j
import groovy.util.logging.Log4j2

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.security.access.annotation.Secured

@Transactional(readOnly = true)
@Secured('permitAll')

//@Secured(['ROLE_ADMIN','IS_AUTHENTICATED_FULLY'])
@Log4j
class ForgotController
{

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

   // def scaffold = false



    def index(Integer max)
    {
        //params.max = Math.min(max ?: 10, 100)
       // respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance)
    {
        respond userInstance
    }



    def find(String email)
    {
        log.info(email)
        respond User.findByEmail(email)

    }




}
