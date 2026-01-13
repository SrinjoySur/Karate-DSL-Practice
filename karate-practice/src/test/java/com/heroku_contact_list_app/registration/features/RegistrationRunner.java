package com.heroku_contact_list_app.registration.features;

import com.intuit.karate.junit5.Karate;
public class RegistrationRunner {

    @Karate.Test
    Karate testRegistration() {
        return Karate.run("registration").relativeTo(getClass());
    }
}
