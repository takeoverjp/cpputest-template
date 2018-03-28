#include <CppUTest/TestHarness.h>
#include "foo.h"

TEST_GROUP(TestFoo)
{
  void setup()
  {
    //setup
  }

  void teardown()
  {
    //teardown
  }
};

TEST(TestFoo, TestFoo)
{
  LONGS_EQUAL(1, bar());
}
