#include <gtest/gtest.h>
#include <gmock/gmock.h>

#include "MockAccount.h"

TEST(Account, Mock) {
  MockAccount obj(1, 0);
  EXPECT_CALL(obj, GetBalance()).Times(1);
  EXPECT_CALL(obj, ChangeBalance(1)).Times(1);
  EXPECT_CALL(obj, Lock()).Times(1);
  EXPECT_CALL(obj, Unlock()).Times(1);
  EXPECT_CALL(obj, id()).Times(1);

  obj.GetBalance();
  obj.ChangeBalance(1);
  obj.Lock();
  obj.Unlock();
  obj.id();
}

TEST(Account, Init) {
  MockAccount obj(12, 34);
  EXPECT_EQ(obj.Account::id(), 12);
  EXPECT_EQ(obj.Account::GetBalance(), 34);
}

TEST(Account, GetBalance) {
  MockAccount obj(1, 1000);
  EXPECT_EQ(obj.Account::GetBalance(), 1000);
}

TEST(Account, ChangeBalance) {
  MockAccount obj(1, 1000);
  EXPECT_THROW(obj.Account::ChangeBalance(100), std::runtime_error);
  obj.Account::Lock();
  EXPECT_NO_THROW(obj.Account::ChangeBalance(100));
  EXPECT_EQ(obj.Account::GetBalance(), 1100);
}

TEST(Account, Lock) {
  MockAccount obj(1, 1000);
  EXPECT_NO_THROW(obj.Account::Lock());
  EXPECT_THROW(obj.Account::Lock(), std::runtime_error);
}

TEST(Account, Unlock) {
  MockAccount obj(1, 1000);
  EXPECT_NO_THROW(obj.Account::Unlock());
  obj.Account::Lock();
  EXPECT_NO_THROW(obj.Account::Unlock());
}
