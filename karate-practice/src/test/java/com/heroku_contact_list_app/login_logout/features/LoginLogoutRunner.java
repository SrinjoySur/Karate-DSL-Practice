package com.heroku_contact_list_app.login_logout.features;
import com.intuit.karate.junit5.Karate;
public class LoginLogoutRunner {
    @Karate.Test
    Karate testLogin() {
        return Karate.run("login").relativeTo(getClass());
    }
    @Karate.Test
    Karate testLogout() {
        return Karate.run("logout").relativeTo(getClass());
    }
}
