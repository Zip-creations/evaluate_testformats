#include <catch2/catch_test_macros.hpp>

TEST_CASE("test_neg", "[basic]") {
    REQUIRE(true);
}

TEST_CASE("test_pos", "[basic]") {
    REQUIRE(false);
}

TEST_CASE("test_skip", "[basic][.]") {
    SKIP("this test will be skipped, to show how skipped tests are handled");
}

// catch2 doesn't allows duplicate names
// TEST_CASE("test_same_name", "[basic]") {
//     REQUIRE(true);
// }
