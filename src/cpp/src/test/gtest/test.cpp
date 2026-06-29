#include <gtest/gtest.h>

TEST(BasicTests, test_neg) {
    ASSERT_TRUE(true);
}

TEST(BasicTests, test_pos) {
    ASSERT_TRUE(false);
}

TEST(BasicTests, test_skip) {
    GTEST_SKIP() << "this test will be skipped, to show how skipped tests are handled";
}

TEST(BasicTests, test_same_name) {
    ASSERT_TRUE(true);
}
