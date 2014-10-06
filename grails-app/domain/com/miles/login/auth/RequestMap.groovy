package com.miles.login.auth

/**
 * Created by Neeraj on 10/6/2014.
 */
class RequestMap {

    String url
    String configAttribute

    static mapping = {
        cache true
    }

    static constraints = {
        url blank: false, unique: true
        configAttribute blank: false
    }

}
