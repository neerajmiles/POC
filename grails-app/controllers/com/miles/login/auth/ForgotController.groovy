package com.miles.login.auth

import groovy.util.logging.Log4j
import groovy.util.logging.Log4j2

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.springframework.security.access.annotation.Secured
import org.apache.commons.codec.binary.Base64

@Transactional(readOnly = true)
@Secured('permitAll')
@Log4j
class ForgotController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    // def scaffold = false
    def mailService

   // String temp
    def index(Integer max) {
        //params.max = Math.min(max ?: 10, 100)
        // respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }



    def sendMail(String email) {
        log.info("Hello")
        log.info(email)
       // def email=link.tokenize("/").last()


        def mail = mailService.sendMail
        {
            to "${email}"
            from "miles.in"
            subject "Password Reset Link"
            def data = email
            def bytes = data.bytes

            Base64 coder = new Base64()

            def encodedData = coder.encode(bytes)
            def decodedData = coder.decode(encodedData)
            println "Original Data: $data"
            println "Encoded Data:  " + new String(encodedData)
            println "Decoded Data:  " + new String(decodedData)

            //body "http://localhost:8080/loginApp/forgot/find/${URLEncoder.encode(email)}"
            //body "http://localhost:8080/loginApp/forgot/findEmail?email=${new String(encodedData)}"
            body "http://localhost:8080/loginApp/forgot/findEmail?email=${new String(encodedData)}"

        }
        //  temp = new String(decodedData)
        // println "Temp Data :  " + temp


    }


    def findId(String id) {
        //log.info(email)
        println "URL :  " +id
        respond User.findById(id)


    }

    def findEmail(String email) {
        Base64 coder = new Base64()
        def decodedData = coder.decode(email)
       // println("email:>"+new String(decodedData))
        respond User.findByEmail(new String(decodedData))


    }

}
