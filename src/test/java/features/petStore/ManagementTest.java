package features.petStore;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import org.apache.commons.io.FileUtils;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;;
import org.junit.jupiter.api.Test;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


public class ManagementTest {
    @Test
    void testParallel(){
        Results results = Runner.path("classpath:features")
                .outputCucumberJson(true)
                .tags("~@ignore").parallel(4);
        //4 scenarios al mismo tiempo
        generateReport(results.getReportDir());
    }

    public static void generateReport(String karateOutputPath){
        Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[]{"json"}, true);
        List<String> jsonPaths = new ArrayList<>(jsonFiles.size());
        jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
        Configuration config = new Configuration(new File("build"), "TestAutomation");
        ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
        reportBuilder.generateReports();
    }

}
