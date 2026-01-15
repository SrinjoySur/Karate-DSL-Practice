package in.reqres.features;
import com.intuit.karate.junit5.Karate;
public class CRUDRunner {
    @Karate.Test
    Karate testCRUD(){
        return Karate.run("CRUD").relativeTo(getClass());
    }
}
