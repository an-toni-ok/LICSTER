#include <sys/errno.h>
#include <gtest/gtest.h>
#include "add.c"
/*#include <heap_mem.h>*/


TEST(CalcTest, Add) {
        ASSERT_EQ(add(1,1), 2);
        ASSERT_EQ(add(2,3), 5);
        ASSERT_EQ(add(3,7), 10);
}

TEST(CalcTest, Sub) {
        ASSERT_EQ(3, 3);
        ASSERT_EQ(-10, -10);
}

int main(int argc, char **argv) {
        testing::InitGoogleTest(&argc, argv);
        return RUN_ALL_TESTS();
}
