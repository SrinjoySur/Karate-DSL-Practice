package com.heroku_contact_list_app.login_logout.features;
import com.intuit.karate.junit5.Karate;
public class LoginLogoutRunner {
    @Karate.Test
    Karate testLoginLogout() {
        return Karate.run("features").relativeTo(getClass());
    }
}
