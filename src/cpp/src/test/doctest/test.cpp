#include <doctest/doctest.h>

TEST_CASE("test_neg") {
    CHECK(true);
}

TEST_CASE("test_pos") {
    CHECK(false);
}

TEST_CASE("test_skip" * doctest::skip()) {
    MESSAGE("this test will be skipped, to show how skipped tests are handled");
    return;
}

TEST_CASE("test_same_name") {
    CHECK(true);
}
