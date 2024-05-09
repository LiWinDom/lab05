## Laboratory work V

1. Создайте CMakeList.txt для библиотеки banking.
```shell
$ git clone https://github.com/LiWinDom/lab05
```
```shell
Cloning into 'lab05'...
remote: Enumerating objects: 137, done.
remote: Counting objects: 100% (25/25), done.
remote: Compressing objects: 100% (9/9), done.
remote: Total 137 (delta 18), reused 16 (delta 16), pack-reused 112
Receiving objects: 100% (137/137), 918.92 KiB | 3.00 MiB/s, done.
Resolving deltas: 100% (60/60), done.
```

```shell
$ cd banking
```

```shell
$ touch CMakeLists.txt
```

```shell
$ mkdir tests
```

```shell
$ touch ./tests/banking.cc
```

```shell
$ cmake -S ./ -B ./cmake-build
```
```shell
-- The C compiler identification is AppleClang 15.0.0.15000309
-- The CXX compiler identification is AppleClang 15.0.0.15000309
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /Library/Developer/CommandLineTools/usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /Library/Developer/CommandLineTools/usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
CMake Warning (dev) at /usr/local/Cellar/cmake/3.28.3/share/cmake/Modules/FetchContent.cmake:1331 (message):
  The DOWNLOAD_EXTRACT_TIMESTAMP option was not given and policy CMP0135 is
  not set.  The policy's OLD behavior will be used.  When using a URL
  download, the timestamps of extracted files should preferably be that of
  the time of extraction, otherwise code that depends on the extracted
  contents might not be rebuilt if the URL changes.  The OLD behavior
  preserves the timestamps from the archive instead, but this is usually not
  what you want.  Update your project to the NEW behavior or specify the
  DOWNLOAD_EXTRACT_TIMESTAMP option with a value of true to avoid this
  robustness issue.
Call Stack (most recent call first):
  CMakeLists.txt:16 (FetchContent_Declare)
This warning is for project developers.  Use -Wno-dev to suppress it.

-- Found Python: /usr/local/Frameworks/Python.framework/Versions/3.12/bin/python3.12 (found version "3.12.3") found components: Interpreter
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success
-- Found Threads: TRUE
-- Configuring done (4.0s)
-- Generating done (0.1s)
-- Build files have been written to: /Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build
```

```shell
$ cmake --build cmake-build
```
```shell
[  7%] Building CXX object CMakeFiles/banking_lib.dir/Account.cpp.o
[ 14%] Building CXX object CMakeFiles/banking_lib.dir/Transaction.cpp.o
[ 21%] Linking CXX static library libbanking_lib.a
[ 21%] Built target banking_lib
[ 28%] Building CXX object _deps/googletest-build/googletest/CMakeFiles/gtest.dir/src/gtest-all.cc.o
[ 35%] Linking CXX static library ../../../lib/libgtest.a
[ 35%] Built target gtest
[ 42%] Building CXX object _deps/googletest-build/googletest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
[ 50%] Linking CXX static library ../../../lib/libgtest_main.a
[ 50%] Built target gtest_main
[ 57%] Building CXX object CMakeFiles/banking_lib_test.dir/tests/Account.cc.o
[ 64%] Building CXX object CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o
[ 71%] Linking CXX executable banking_lib_test
[ 71%] Built target banking_lib_test
[ 78%] Building CXX object _deps/googletest-build/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.o
[ 85%] Linking CXX static library ../../../lib/libgmock.a
[ 85%] Built target gmock
[ 92%] Building CXX object _deps/googletest-build/googlemock/CMakeFiles/gmock_main.dir/src/gmock_main.cc.o
[100%] Linking CXX static library ../../../lib/libgmock_main.a
[100%] Built target gmock_main
```

2. Создайте модульные тесты на классы Transaction и Account. 
```shell
$ cmake --build cmake-build
```
```shell
[ 23%] Built target banking_lib
[ 38%] Built target gtest
[ 53%] Built target gtest_main
[ 69%] Built target gmock
[ 84%] Built target gmock_main
[ 92%] Building CXX object CMakeFiles/banking_lib_test.dir/tests/banking.cc.o
[100%] Linking CXX executable banking_lib_test
[100%] Built target banking_lib_test
```

```shell
$ ./cmake-build/banking_lib_test
```
```shell
Running main() from /Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build/_deps/googletest-src/googletest/src/gtest_main.cc
[==========] Running 10 tests from 2 test suites.
[----------] Global test environment set-up.
[----------] 6 tests from Account
[ RUN      ] Account.Mock
[       OK ] Account.Mock (0 ms)
[ RUN      ] Account.Init
[       OK ] Account.Init (0 ms)
[ RUN      ] Account.GetBalance
[       OK ] Account.GetBalance (0 ms)
[ RUN      ] Account.ChangeBalance
[       OK ] Account.ChangeBalance (0 ms)
[ RUN      ] Account.Lock
[       OK ] Account.Lock (0 ms)
[ RUN      ] Account.Unlock
[       OK ] Account.Unlock (0 ms)
[----------] 6 tests from Account (0 ms total)

[----------] 4 tests from Transaction
[ RUN      ] Transaction.Mock
[       OK ] Transaction.Mock (0 ms)
[ RUN      ] Transaction.Init
[       OK ] Transaction.Init (0 ms)
[ RUN      ] Transaction.Make
[       OK ] Transaction.Make (0 ms)
[ RUN      ] Transaction.SaveToDataBase
[       OK ] Transaction.SaveToDataBase (0 ms)
[----------] 4 tests from Transaction (0 ms total)

[----------] Global test environment tear-down
[==========] 10 tests from 2 test suites ran. (1 ms total)
[  PASSED  ] 10 tests.
```

3. Настройте сборочную процедуру на Github Actions
```shell
$ cd ..
```

```shell
$ mkdir -p ./github/workflows
```

```shell
$ touch ./github/workflows/CI.yml
```
