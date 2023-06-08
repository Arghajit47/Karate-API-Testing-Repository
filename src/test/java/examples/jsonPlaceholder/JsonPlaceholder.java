package examples.jsonPlaceholder;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class JsonPlaceholder {
    @Test
    void testParallel() {
        Results results = Runner.path("classpath:examples/jsonPlaceholder")
                //.outputCucumberJson(true)
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
    
}
