package examples.apiTesting.Activities;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class activities {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:examples/apiTesting/Activities")
                //.outputCucumberJson(true)
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
    
}
