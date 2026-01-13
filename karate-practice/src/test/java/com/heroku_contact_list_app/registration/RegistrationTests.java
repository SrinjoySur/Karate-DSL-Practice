package com.heroku_contact_list_app.registration;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
public class RegistrationTests {
    @Test
    void testRegistration(){
        Results results=Runner
                .path("classpath:registration/features")
                .outputCucumberJson(true)
                .parallel(2);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
