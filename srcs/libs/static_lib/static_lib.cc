#include "static_lib.h"

#include "srcs/libs/common_lib/common_lib.h"

int User::Add(int a, int b) {
    Calculator calculator;
    return calculator.Add(a, b);
}

int user_add(int a, int b) {
    User user;
    return user.Add(a, b);
}