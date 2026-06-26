import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertTrue;

class BasicTest {

    @Test
    void test_neg() {
        assertTrue(true);
    }

    @Test
    void test_pos() {
        assertTrue(false);
    }

    @Test
    @Disabled("this test will be skipped, to show how skipped tests are handled")
    void test_skip() {
        assertTrue(true);
    }

    @Test
    void test_same_name() {
        assertTrue(true);
    }
}
