#include <gtest/gtest.h>

// gtest doesn't allows duplicate names
TEST(BasicTests2, test_same_name) {
    ASSERT_TRUE(true);
}
