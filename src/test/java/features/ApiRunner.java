package features;

import com.intuit.karate.junit5.Karate;

class ApiRunner {

    @Karate.Test
    Karate testPet() {
        return Karate.run("petStore/TestApi").relativeTo(getClass());
    }
}
