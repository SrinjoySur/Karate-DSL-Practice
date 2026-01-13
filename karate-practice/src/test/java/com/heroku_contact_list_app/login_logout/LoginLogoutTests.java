package com.heroku_contact_list_app.login_logout;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
public class LoginLogoutTests {
    @Test
    void testLoginLogout(){
        Results results=Runner
                .path("classpath:com/heroku_contact_list_app/login_logout/features")
                .outputCucumberJson(true)
                .parallel(1);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());

    }
}
