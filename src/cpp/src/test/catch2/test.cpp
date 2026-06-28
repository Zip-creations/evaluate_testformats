#include <catch2/catch_test_macros.hpp>

TEST_CASE("test_neg", "[test]") {
    REQUIRE(true);
}

TEST_CASE("test_pos", "[test]") {
    REQUIRE(false);
}

TEST_CASE("test_skip", "[test]") {
    SKIP("this test will be skipped, to show how skipped tests are handled");
}

// catch2 doesn't allows duplicate names
TEST_CASE("test_same_name", "[test]") {
    REQUIRE(true);
}
