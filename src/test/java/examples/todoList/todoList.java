package examples.todoList;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class todoList {
    @Test
    void testParallel() {
        Results results = Runner
                .path("classpath:examples/todoList/projects.feature", "classpath:examples/todoList/tasks.feature",
                        "classpath:examples/todoList/labels.feature", "classpath:examples/todoList/deleteTask.feature",
                        "classpath:examples/todoList/deleteProjects.feature")
                // .outputCucumberJson(true)
                .parallel(0);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }

}
