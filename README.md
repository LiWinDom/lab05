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

4. Настройте Coveralls.io
```shell
$ brew install lcov
```
```shell
==> Auto-updating Homebrew...
Adjust how often this is run with HOMEBREW_AUTO_UPDATE_SECS or disable with
HOMEBREW_NO_AUTO_UPDATE. Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
==> Downloading https://ghcr.io/v2/homebrew/core/lcov/manifests/2.1
####################################################################################################################################################### 100.0%
==> Fetching lcov
==> Downloading https://ghcr.io/v2/homebrew/core/lcov/blobs/sha256:2fcbef5018279b40b1dc3439b46591123184230a7d50803ff1a6031c13849213
####################################################################################################################################################### 100.0%
==> Pouring lcov--2.1.sonoma.bottle.tar.gz
🍺  /usr/local/Cellar/lcov/2.1: 63 files, 1.9MB
==> Running `brew cleanup lcov`...
Disable this behaviour by setting HOMEBREW_NO_INSTALL_CLEANUP.
Hide these hints with HOMEBREW_NO_ENV_HINTS (see `man brew`).
```

```shell
$ lcov -c --directory ./banking/build/CMakeFiles/banking_lib_test.dir/ --output-file coverage.info --ignore-errors inconsistent
```
```shell
Capturing coverage data from ./banking/build/CMakeFiles/banking_lib_test.dir/
geninfo cmd: '/usr/local/Cellar/lcov/2.1/bin/geninfo ./banking/build/CMakeFiles/banking_lib_test.dir/ --output-filename coverage.info --ignore-errors inconsistent'
Found LLVM gcov version 15.0.0, which emulates gcov version 4.2.0
Using intermediate gcov format
geninfo: WARNING: (usage) branch filter enabled but branch coverage not enabled
	(use "geninfo --ignore-errors usage,usage ..." to suppress this warning)
Recording 'internal' directories:
	/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/CMakeFiles/banking_lib_test.dir
Writing temporary data to /tmp/geninfo_datk2Cm
Scanning ./banking/build/CMakeFiles/banking_lib_test.dir for .gcda files ...
Found 1 data files in ./banking/build/CMakeFiles/banking_lib_test.dir
using: chunkSize: 1, nchunks:1, intervalLength:0
Finished processing 1 GCDA file
Apply filtering..
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":7:  function _ZN11MockAccountD0Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.  See lcovrc man entry for 'derive_function_end_line'.
	(use "geninfo --ignore-errors inconsistent,inconsistent ..." to suppress this warning)
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":9:  function _ZN11MockAccountC1Eii found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":11:  function _ZNK11MockAccount10GetBalanceEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":12:  function _ZN11MockAccount13ChangeBalanceEi found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":13:  function _ZN11MockAccount4LockEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":14:  function _ZN11MockAccount6UnlockEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-cardinalities.h":91:  function _ZN7testing11CardinalityD1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-cardinalities.h":113:  function _ZNK7testing11Cardinality22IsSaturatedByCallCountEi found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-matchers.h":113: function _ZN7testing25MatcherDescriberInterfaceC2Ev end line 109 less than start line 113.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-matchers.h":113: failed to set end line for function _ZN7testing25MatcherDescriberInterfaceC2Ev.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-matchers.h":219: function _ZN7testing8internal24DummyMatchResultListenerD0Ev end line 184 less than start line 219.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-matchers.h":219: failed to set end line for function _ZN7testing8internal24DummyMatchResultListenerD0Ev.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":44:  function _ZNSt3__122__compressed_pair_elemIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorELi0ELb0EED2Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":49:  function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ue170006ENS_18__default_init_tagE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":50:  function _ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2B8ue170006ENS_16__value_init_tagE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":54:  function _ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B8ue170006IivEEOT_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":59:  function _ZNSt3__122__compressed_pair_elemIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorELi0ELb0EEC2B8ue170006IJOS6_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":63:  function _ZNSt3__122__compressed_pair_elemIPPKvLi0ELb0EE5__getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":64:  function _ZNKSt3__122__compressed_pair_elemIPPKvLi0ELb0EE5__getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":78:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":79:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeIN7testing11ExpectationEPvEEEELi1ELb1EEC2B8ue170006ENS_16__value_init_tagE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":83:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006IRKS2_vEEOT_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":88:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorEEELi1ELb1EEC2B8ue170006IJOS8_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":92:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":93:  function _ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":97:  function _ZNSt3__117__compressed_pairIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS6_EEED1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":118:  function _ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeIN7testing11ExpectationES3_EEEEEC1B8ue170006ILb1EvEEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":122:  function _ZNSt3__117__compressed_pairIPPKvRNS_9allocatorIS2_EEEC1B8ue170006IDnS6_EEOT_OT0_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":127:  function _ZNSt3__117__compressed_pairIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS6_EEEC1B8ue170006IJOS6_EJOS8_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSE_IJDpT0_EEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":134:  function _ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE5firstB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":139:  function _ZNKSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE5firstB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":144:  function _ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE6secondB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":149:  function _ZNKSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE6secondB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":154:  function _ZNSt3__117__compressed_pairINS_9allocatorIN7testing10OnceActionIFivEEEEES5_E16__get_first_baseB8ue170006EPS7_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":158:  function _ZNSt3__117__compressed_pairINS_9allocatorIN7testing10OnceActionIFivEEEEES5_E17__get_second_baseB8ue170006EPS7_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":303:  function _ZN7testing25StringMatchResultListenerD0Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":305:  function _ZN7testing25StringMatchResultListenerC1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":308:  function _ZNK7testing25StringMatchResultListener3strEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":562:  function _ZN7testing8internal15PrintIfNotEmptyERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEPNS1_13basic_ostreamIcS4_EE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":616:  function _ZN7testing8internal11TuplePrefixILm1EE7MatchesINSt3__15tupleIJNS_7MatcherIiEEEEENS5_IJiEEEEEbRKT_RKT0_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":627:  function _ZN7testing8internal11TuplePrefixILm1EE22ExplainMatchFailuresToINSt3__15tupleIJNS_7MatcherIiEEEEENS5_IJiEEEEEvRKT_RKT0_PNS4_13basic_ostreamIcNS4_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":661:  function _ZN7testing8internal11TuplePrefixILm0EE7MatchesINSt3__15tupleIJEEES6_EEbRKT_RKT0_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":667:  function _ZN7testing8internal11TuplePrefixILm0EE22ExplainMatchFailuresToINSt3__15tupleIJEEES6_EEvRKT_RKT0_PNS4_13basic_ostreamIcNS4_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":678:  function _ZN7testing8internal12TupleMatchesINSt3__15tupleIJEEES4_EEbRKT_RKT0_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":692:  function _ZN7testing8internal26ExplainMatchFailureTupleToINSt3__15tupleIJEEES4_EEvRKT_RKT0_PNS2_13basic_ostreamIcNS2_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":747:  function _ZNK7testing8internal15AnythingMatcher15MatchAndExplainI7AccountEEbRKT_PNSt3__113basic_ostreamIcNS7_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":750:  function _ZNK7testing8internal15AnythingMatcher10DescribeToEPNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":751:  function _ZNK7testing8internal15AnythingMatcher18DescribeNegationToEPNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":4249:  function _ZN7testing1AIRKNSt3__15tupleIJEEEEENS_7MatcherIT_EEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":277: function _ZN7testing8internal10OnCallSpecIFivEED1Ev end line 259 less than start line 277.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":277: failed to set end line for function _ZN7testing8internal10OnCallSpecIFivEED1Ev.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":556: function _ZN7testing14ExpectationSetD1Ev end line 536 less than start line 556.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":556: failed to set end line for function _ZN7testing14ExpectationSetD1Ev.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":1077: function _ZN7testing8internal16TypedExpectationIFivEE13ActionAdaptorD1Ev end line 1069 less than start line 1077.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":1077: failed to set end line for function _ZN7testing8internal16TypedExpectationIFivEE13ActionAdaptorD1Ev.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":1251: function _ZN7testing8internal8MockSpecIFviEED1Ev end line 1222 less than start line 1251.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":1251: failed to set end line for function _ZN7testing8internal8MockSpecIFviEED1Ev.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h":468: function _ZN7testing8internal15TestFactoryImplI17Account_Init_TestEC1Ev end line 458 less than start line 468.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h":468: failed to set end line for function _ZN7testing8internal15TestFactoryImplI17Account_Init_TestEC1Ev.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h":490: function _ZN7testing8internal12CodeLocationD1Ev end line 470 less than start line 490.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h":490: failed to set end line for function _ZN7testing8internal12CodeLocationD1Ev.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h":855: function _ZN7testing8internal14TrueWithStringD1Ev end line 559 less than start line 855.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h":855: failed to set end line for function _ZN7testing8internal14TrueWithStringD1Ev.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":56:  function _ZNSt3__117bad_function_callC1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":66:  function _ZNSt3__117bad_function_callD0Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":76:  function _ZNSt3__125__throw_bad_function_callB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":115:  function _ZNSt3__110__function10__not_nullB8ue170006IN7testing8internal16TypedExpectationIFivEE13ActionAdaptorEEEbRKT_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":146:  function _ZNSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_ED1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":155:  function _ZNKSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E8__targetB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":159:  function _ZNKSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E15__get_allocatorB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":169:  function _ZNSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EC1B8ue170006ERKS7_RKS9_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":176:  function _ZNSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EC1B8ue170006ERKS7_OS9_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":183:  function _ZNSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EC1B8ue170006EOS7_OS9_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":190:  function _ZNSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EclB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":210:  function _ZNSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E7destroyB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":272:  function _ZNSt3__110__function6__baseIFivEEC2B8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":273:  function _ZNSt3__110__function6__baseIFivEED0Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":287:  function _ZNSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_ED0Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":300:  function _ZNSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EC1B8ue170006ERKS7_RKS9_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":304:  function _ZNSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EC1B8ue170006ERKS7_OS9_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":308:  function _ZNSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EC1B8ue170006EOS7_OS9_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":324:  function _ZNKSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E7__cloneEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":337:  function _ZNKSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E7__cloneEPNS0_6__baseIS5_EE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":344:  function _ZNSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E7destroyEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":351:  function _ZNSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E18destroy_deallocateEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":362:  function _ZNSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EclEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":371:  function _ZNKSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E6targetERKSt9type_info found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":380:  function _ZNKSt3__110__function6__funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E11target_typeEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":400:  function _ZNSt3__110__function12__value_funcIFivEE9__as_baseB8ue170006EPv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":407:  function _ZNSt3__110__function12__value_funcIFivEEC1B8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":410:  function _ZNSt3__110__function12__value_funcIFivEEC1B8ue170006IN7testing8internal16TypedExpectationIS2_E13ActionAdaptorENS_9allocatorIS9_EEEEOT_RKT0_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":439:  function _ZNSt3__110__function12__value_funcIFivEEC1B8ue170006IN7testing8internal16TypedExpectationIS2_E13ActionAdaptorEvEEOT_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":443:  function _ZNSt3__110__function12__value_funcIFivEEC1B8ue170006ERKS3_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":457:  function _ZNSt3__110__function12__value_funcIFivEEC1B8ue170006EOS3_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":474:  function _ZNSt3__110__function12__value_funcIFivEED1B8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":514:  function _ZNKSt3__110__function12__value_funcIFivEEclB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":522:  function _ZNSt3__110__function12__value_funcIFivEE4swapB8ue170006ERS3_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":562:  function _ZNKSt3__110__function12__value_funcIFivEEcvbB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":1012:  function _ZNSt3__18functionIFivEEC1B8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":1055:  function _ZNKSt3__18functionIFivEEcvbB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
geninfo: WARNING: (count) max_message_count=100 reached for 'inconsistent' messages: no more will be reported.
	To increase or decrease this limit use '--rc max_message_count=value'.
	(use "geninfo --ignore-errors count,count ..." to suppress this warning)
Finished filter file processing
Finished .info-file creation
Summary coverage rate:
  source files: 73
  lines.......: 70.2% (1444 of 2057 lines)
  functions...: 46.6% (1810 of 3885 functions)
Message summary:
  102 warning messages:
    count: 1
    inconsistent: 100
    usage: 1
  60 ignore messages:
    inconsistent: 60
```

```shell
$ genhtml coverage.info --output-directory out --ignore-errors inconsistent
```
```shell
Reading tracefile coverage.info.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":44:  function _ZNSt3__122__compressed_pair_elemIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorELi0ELb0EED2Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.  See lcovrc man entry for 'derive_function_end_line'.
	(use "genhtml --ignore-errors inconsistent,inconsistent ..." to suppress this warning)
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":49:  function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B8ue170006ENS_18__default_init_tagE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":50:  function _ZNSt3__122__compressed_pair_elemINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEELi0ELb0EEC2B8ue170006ENS_16__value_init_tagE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":54:  function _ZNSt3__122__compressed_pair_elemImLi0ELb0EEC2B8ue170006IivEEOT_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":59:  function _ZNSt3__122__compressed_pair_elemIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorELi0ELb0EEC2B8ue170006IJOS6_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":63:  function _ZNSt3__122__compressed_pair_elemIPPKvLi0ELb0EE5__getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":64:  function _ZNKSt3__122__compressed_pair_elemIPPKvLi0ELb0EE5__getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":78:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006ENS_18__default_init_tagE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":79:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorINS_11__tree_nodeIN7testing11ExpectationEPvEEEELi1ELb1EEC2B8ue170006ENS_16__value_init_tagE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":83:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B8ue170006IRKS2_vEEOT_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":88:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorEEELi1ELb1EEC2B8ue170006IJOS8_EJLm0EEEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENS_15__tuple_indicesIJXspT0_EEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":92:  function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":93:  function _ZNKSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EE5__getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":97:  function _ZNSt3__117__compressed_pairIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS6_EEED1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":118:  function _ZNSt3__117__compressed_pairINS_15__tree_end_nodeIPNS_16__tree_node_baseIPvEEEENS_9allocatorINS_11__tree_nodeIN7testing11ExpectationES3_EEEEEC1B8ue170006ILb1EvEEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":122:  function _ZNSt3__117__compressed_pairIPPKvRNS_9allocatorIS2_EEEC1B8ue170006IDnS6_EEOT_OT0_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":127:  function _ZNSt3__117__compressed_pairIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS6_EEEC1B8ue170006IJOS6_EJOS8_EEENS_21piecewise_construct_tENS_5tupleIJDpT_EEENSE_IJDpT0_EEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":134:  function _ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE5firstB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":139:  function _ZNKSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE5firstB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":144:  function _ZNSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE6secondB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":149:  function _ZNKSt3__117__compressed_pairIPPKvNS_9allocatorIS2_EEE6secondB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":154:  function _ZNSt3__117__compressed_pairINS_9allocatorIN7testing10OnceActionIFivEEEEES5_E16__get_first_baseB8ue170006EPS7_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/compressed_pair.h":158:  function _ZNSt3__117__compressed_pairINS_9allocatorIN7testing10OnceActionIFivEEEEES5_E17__get_second_baseB8ue170006EPS7_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":305:  function _ZNSt3__112__tuple_leafILm0EN7testing7MatcherIiEELb0EED2Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":356:  function _ZNSt3__112__tuple_leafILm0EiLb0EEC2B8ue170006IivEEOT_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":382:  function _ZNSt3__112__tuple_leafILm0EN7testing7MatcherIiEELb0EEC2B8ue170006ERKS4_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":398:  function _ZNSt3__112__tuple_leafILm0EiLb0EE3getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":399:  function _ZNKSt3__112__tuple_leafILm0EiLb0EE3getB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":491:  function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJN7testing7MatcherIiEEEED1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":502:  function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJiEEC1B8ue170006IJLm0EEJiEJEJEJiEEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENS6_IJDpT2_EEEDpOT3_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":545:  function _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0EEEEJN7testing7MatcherIiEEEEC1ERKS6_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":578:  function _ZNSt3__15tupleIJN7testing7MatcherIiEEEED1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":654:  function _ZNSt3__15tupleIJRKN7testing8internal16TypedExpectationIFivEE13ActionAdaptorEEEC1B8ue170006INS_4_AndELi0EEES8_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":733:  function _ZNSt3__15tupleIJiEEC1B8ue170006IJiELi0EEEDpOT_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":790:  function _ZNSt3__15tupleIJN7testing7MatcherIiEEEEC1ERKS4_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":1392:  function _ZNSt3__13getB8ue170006ILm0EJON7testing8internal16TypedExpectationIFivEE13ActionAdaptorEEEERNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERSC_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":1401:  function _ZNSt3__13getB8ue170006ILm0EJiEEERKNS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeERKS5_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":1410:  function _ZNSt3__13getB8ue170006ILm0EJiEEEONS_13tuple_elementIXT_ENS_5tupleIJDpT0_EEEE4typeEOS5_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":1526:  function _ZNSt3__110make_tupleB8ue170006IJEEENS_5tupleIJDpNS_18__unwrap_ref_decayIT_E4typeEEEEDpOS3_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/tuple":1534:  function _ZNSt3__116forward_as_tupleB8ue170006IJN7testing8internal16TypedExpectationIFivEE13ActionAdaptorEEEENS_5tupleIJDpOT_EEESA_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-actions.h":382: function _ZN7testing10OnceActionIFivEED1Ev end line 255 less than start line 382.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-actions.h":382: failed to set end line for function _ZN7testing10OnceActionIFivEED1Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-actions.h":504: function _ZN7testing10OnceActionIFivEE18StdFunctionAdaptorINS_8internal12ReturnActionIiE4ImplIiEEED1Ev end line 492 less than start line 504.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-actions.h":504: failed to set end line for function _ZN7testing10OnceActionIFivEE18StdFunctionAdaptorINS_8internal12ReturnActionIiE4ImplIiEEED1Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-actions.h":720: function _ZN7testing6ActionIFivEED1Ev end line 687 less than start line 720.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-actions.h":720: failed to set end line for function _ZN7testing6ActionIFivEED1Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-actions.h":953: function _ZN7testing8internal12ReturnActionIiE4ImplIiED1Ev end line 937 less than start line 953.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-actions.h":953: failed to set end line for function _ZN7testing8internal12ReturnActionIiE4ImplIiED1Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-cardinalities.h":91:  function _ZN7testing11CardinalityD1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-cardinalities.h":113:  function _ZNK7testing11Cardinality22IsSaturatedByCallCountEi found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-matchers.h":113: function _ZN7testing25MatcherDescriberInterfaceC2Ev end line 109 less than start line 113.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-matchers.h":113: failed to set end line for function _ZN7testing25MatcherDescriberInterfaceC2Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-matchers.h":219: function _ZN7testing8internal24DummyMatchResultListenerD0Ev end line 184 less than start line 219.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-matchers.h":219: failed to set end line for function _ZN7testing8internal24DummyMatchResultListenerD0Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":277: function _ZN7testing8internal10OnCallSpecIFivEED1Ev end line 259 less than start line 277.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":277: failed to set end line for function _ZN7testing8internal10OnCallSpecIFivEED1Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":556: function _ZN7testing14ExpectationSetD1Ev end line 536 less than start line 556.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":556: failed to set end line for function _ZN7testing14ExpectationSetD1Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":1077: function _ZN7testing8internal16TypedExpectationIFivEE13ActionAdaptorD1Ev end line 1069 less than start line 1077.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":1077: failed to set end line for function _ZN7testing8internal16TypedExpectationIFivEE13ActionAdaptorD1Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":1251: function _ZN7testing8internal8MockSpecIFviEED1Ev end line 1222 less than start line 1251.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h":1251: failed to set end line for function _ZN7testing8internal8MockSpecIFviEED1Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/internal/gmock-internal-utils.h":55:  function _ZN7testing7MatcherIiED0Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/internal/gmock-internal-utils.h":228:  function _ZN7testing8internal6AssertEbPKciRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/internal/gmock-internal-utils.h":241:  function _ZN7testing8internal6ExpectEbPKciRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/internal/gmock-internal-utils.h":408:  function _ZN7testing8internal9ApplyImplIRKNSt3__18functionIFivEEENS2_5tupleIJEEEJEEEDTclclsr3stdE7forwardIT_Efp_Espclsr3stdE3getIXT1_EEclsr3stdE7forwardIT0_Efp0_EEEEOSA_OSB_NS0_13IndexSequenceIJXspT1_EEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/internal/gmock-internal-utils.h":416:  function _ZN7testing8internal5ApplyIRKNSt3__18functionIFivEEENS2_5tupleIJEEEEEDTcl9ApplyImplclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EcvNS0_21MakeIndexSequenceImplIXsr3std10tuple_sizeINS2_16remove_referenceISB_E4typeEEE5valueEE4typeE_EEEOSA_OSB_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":303:  function _ZN7testing25StringMatchResultListenerD0Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":305:  function _ZN7testing25StringMatchResultListenerC1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":308:  function _ZNK7testing25StringMatchResultListener3strEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":562:  function _ZN7testing8internal15PrintIfNotEmptyERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEPNS1_13basic_ostreamIcS4_EE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":616:  function _ZN7testing8internal11TuplePrefixILm1EE7MatchesINSt3__15tupleIJNS_7MatcherIiEEEEENS5_IJiEEEEEbRKT_RKT0_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":627:  function _ZN7testing8internal11TuplePrefixILm1EE22ExplainMatchFailuresToINSt3__15tupleIJNS_7MatcherIiEEEEENS5_IJiEEEEEvRKT_RKT0_PNS4_13basic_ostreamIcNS4_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":661:  function _ZN7testing8internal11TuplePrefixILm0EE7MatchesINSt3__15tupleIJEEES6_EEbRKT_RKT0_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":667:  function _ZN7testing8internal11TuplePrefixILm0EE22ExplainMatchFailuresToINSt3__15tupleIJEEES6_EEvRKT_RKT0_PNS4_13basic_ostreamIcNS4_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":678:  function _ZN7testing8internal12TupleMatchesINSt3__15tupleIJEEES4_EEbRKT_RKT0_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":692:  function _ZN7testing8internal26ExplainMatchFailureTupleToINSt3__15tupleIJEEES4_EEvRKT_RKT0_PNS2_13basic_ostreamIcNS2_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":747:  function _ZNK7testing8internal15AnythingMatcher15MatchAndExplainI7AccountEEbRKT_PNSt3__113basic_ostreamIcNS7_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":750:  function _ZNK7testing8internal15AnythingMatcher10DescribeToEPNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":751:  function _ZNK7testing8internal15AnythingMatcher18DescribeNegationToEPNSt3__113basic_ostreamIcNS2_11char_traitsIcEEEE found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h":4249:  function _ZN7testing1AIRKNSt3__15tupleIJEEEEENS_7MatcherIT_EEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/shared_ptr.h":229: function _ZNSt3__120__shared_ptr_pointerIPN7testing8internal12ReturnActionIiE4ImplIiE5StateENS_10shared_ptrIS7_E27__shared_ptr_default_deleteIS7_S7_EENS_9allocatorIS7_EEED0Ev end line 216 less than start line 229.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/shared_ptr.h":229: failed to set end line for function _ZNSt3__120__shared_ptr_pointerIPN7testing8internal12ReturnActionIiE4ImplIiE5StateENS_10shared_ptrIS7_E27__shared_ptr_default_deleteIS7_S7_EENS_9allocatorIS7_EEED0Ev.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/shared_ptr.h":285: function _ZNSt3__120__shared_ptr_emplaceIN7testing10OnceActionIFivEEENS_9allocatorIS4_EEED0Ev end line 277 less than start line 285.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__memory/shared_ptr.h":285: failed to set end line for function _ZNSt3__120__shared_ptr_emplaceIN7testing10OnceActionIFivEEENS_9allocatorIS4_EEED0Ev.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":7:  function _ZN11MockAccountD0Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":9:  function _ZN11MockAccountC1Eii found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":11:  function _ZNK11MockAccount10GetBalanceEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":12:  function _ZN11MockAccount13ChangeBalanceEi found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":13:  function _ZN11MockAccount4LockEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h":14:  function _ZN11MockAccount6UnlockEv found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":56:  function _ZNSt3__117bad_function_callC1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":66:  function _ZNSt3__117bad_function_callD0Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":76:  function _ZNSt3__125__throw_bad_function_callB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":115:  function _ZNSt3__110__function10__not_nullB8ue170006IN7testing8internal16TypedExpectationIFivEE13ActionAdaptorEEEbRKT_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":146:  function _ZNSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_ED1Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":155:  function _ZNKSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E8__targetB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":159:  function _ZNKSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_E15__get_allocatorB8ue170006Ev found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":169:  function _ZNSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EC1B8ue170006ERKS7_RKS9_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (inconsistent) "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++/v1/__functional/function.h":176:  function _ZNSt3__110__function12__alloc_funcIN7testing8internal16TypedExpectationIFivEE13ActionAdaptorENS_9allocatorIS7_EES5_EC1B8ue170006ERKS7_OS9_ found on line but no corresponding 'line' coverage data point.  Cannot derive function end line.
genhtml: WARNING: (count) max_message_count=100 reached for 'inconsistent' messages: no more will be reported.
	To increase or decrease this limit use '--rc max_message_count=value'.
	(use "genhtml --ignore-errors count,count ..." to suppress this warning)
Found 72 entries.
Found common filename prefix "/Library/Developer/CommandLineTools/SDKs/MacOSX14.4.sdk/usr/include/c++"
Generating output.
Processing file v1/__memory/uninitialized_algorithms.h
  lines=21 hit=14 functions=6 hit=4
Processing file v1/__algorithm/min.h
  lines=4 hit=4 functions=2 hit=2
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-printers.h
  lines=52 hit=0 functions=39 hit=0
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/internal/gmock-internal-utils.h
  lines=16 hit=10 functions=41 hit=25
Processing file v1/typeinfo
  lines=8 hit=4 functions=4 hit=2
Processing file v1/__memory/allocator_destructor.h
  lines=4 hit=0 functions=42 hit=0
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/Transaction.cpp
  lines=34 hit=28 functions=13 hit=9
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-spec-builders.h
  lines=370 hit=179 functions=322 hit=211
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/Account.cpp
  lines=13 hit=13 functions=9 hit=8
Processing file v1/__memory/allocate_at_least.h
  lines=2 hit=2 functions=2 hit=2
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockAccount.h
  lines=6 hit=6 functions=15 hit=14
Processing file v1/set
  lines=6 hit=6 functions=6 hit=6
Processing file v1/__string/constexpr_c_functions.h
  lines=12 hit=8 functions=3 hit=2
Processing file v1/__iterator/wrap_iter.h
  lines=24 hit=24 functions=22 hit=21
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-matchers.h
  lines=43 hit=12 functions=46 hit=23
Processing file v1/__memory/shared_ptr.h
  lines=128 hit=126 functions=156 hit=121
Processing file v1/__functional/function.h
  lines=157 hit=96 functions=585 hit=123
Processing file v1/limits
  lines=2 hit=2 functions=4 hit=4
Processing file v1/__memory/allocation_guard.h
  lines=19 hit=17 functions=14 hit=14
Processing file v1/vector
  lines=125 hit=105 functions=67 hit=54
Processing file v1/__utility/exception_guard.h
  lines=9 hit=8 functions=6 hit=6
Processing file v1/__exception/exception.h
  lines=1 hit=0 functions=1 hit=0
Processing file v1/__algorithm/max.h
  lines=4 hit=4 functions=2 hit=2
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/Transaction.h
  lines=2 hit=2 functions=2 hit=2
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest.h
  lines=17 hit=6 functions=8 hit=2
Processing file v1/sstream
  lines=5 hit=5 functions=8 hit=8
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h
  lines=29 hit=22 functions=76 hit=43
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-assertion-result.h
  lines=6 hit=3 functions=7 hit=5
Processing file v1/ostream
  lines=30 hit=25 functions=7 hit=7
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-port.h
  lines=35 hit=32 functions=14 hit=13
Processing file v1/istream
  lines=5 hit=5 functions=2 hit=2
Processing file v1/streambuf
  lines=2 hit=2 functions=1 hit=1
Processing file v1/new
  lines=23 hit=17 functions=10 hit=6
Processing file v1/__algorithm/move.h
  lines=11 hit=8 functions=3 hit=3
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/banking.cc
  lines=93 hit=93 functions=60 hit=60
Processing file v1/__utility/pair.h
  lines=5 hit=5 functions=12 hit=12
Processing file v1/__iterator/reverse_iterator.h
  lines=9 hit=8 functions=34 hit=22
Processing file v1/__string/char_traits.h
  lines=49 hit=12 functions=9 hit=5
Processing file v1/__memory/compressed_pair.h
  lines=31 hit=31 functions=636 hit=252
Processing file v1/__algorithm/comp.h
  lines=2 hit=2 functions=1 hit=1
Processing file v1/locale
  lines=29 hit=16 functions=1 hit=1
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/MockTransaction.h
  lines=7 hit=7 functions=17 hit=16
Processing file v1/__atomic/cxx_atomic_impl.h
  lines=6 hit=0 functions=2 hit=0
Processing file v1/__algorithm/copy.h
  lines=7 hit=7 functions=3 hit=3
Processing file v1/__memory/swap_allocator.h
  lines=1 hit=1 functions=1 hit=1
Processing file v1/tuple
  lines=29 hit=26 functions=603 hit=158
Processing file v1/__memory/allocator_traits.h
  lines=18 hit=15 functions=48 hit=18
Processing file v1/stdexcept
  lines=5 hit=1 functions=5 hit=2
Processing file v1/__atomic/atomic_base.h
  lines=4 hit=0 functions=2 hit=0
Processing file v1/string
  lines=130 hit=111 functions=48 hit=40
Processing file v1/__algorithm/fill_n.h
  lines=6 hit=6 functions=2 hit=2
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-cardinalities.h
  lines=2 hit=2 functions=4 hit=4
Processing file v1/__utility/swap.h
  lines=5 hit=5 functions=5 hit=4
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/gtest-matchers.h
  lines=106 hit=69 functions=148 hit=102
Processing file v1/__memory/pointer_traits.h
  lines=8 hit=8 functions=21 hit=18
Processing file v1/__memory/unique_ptr.h
  lines=22 hit=19 functions=202 hit=59
Processing file v1/__split_buffer
  lines=32 hit=30 functions=22 hit=20
Processing file v1/ios
  lines=31 hit=26 functions=12 hit=10
Processing file v1/__utility/convert_to_integral.h
  lines=1 hit=1 functions=1 hit=1
Processing file v1/__algorithm/copy_move_common.h
  lines=11 hit=11 functions=5 hit=5
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googlemock/include/gmock/gmock-actions.h
  lines=49 hit=45 functions=101 hit=86
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/Account.h
  lines=1 hit=1 functions=1 hit=1
Processing file v1/__iterator/ostreambuf_iterator.h
  lines=3 hit=3 functions=3 hit=3
Processing file v1/__locale
  lines=4 hit=4 functions=2 hit=2
Processing file v1/__memory/allocator.h
  lines=18 hit=17 functions=241 hit=102
Processing file /Users/LiWinDom/Documents/Code/timp/lab05/banking/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-type-util.h
  lines=16 hit=0 functions=2 hit=0
Processing file v1/__algorithm/unwrap_range.h
  lines=4 hit=4 functions=4 hit=4
Processing file v1/__tree
  lines=63 hit=46 functions=27 hit=22
Processing file v1/__algorithm/unwrap_iter.h
  lines=10 hit=10 functions=12 hit=12
Processing file v1/__algorithm/copy_n.h
  lines=3 hit=3 functions=1 hit=1
Processing file v1/__type_traits/invoke.h
  lines=7 hit=4 functions=28 hit=4
Processing file v1/__algorithm/iterator_operations.h
  lines=5 hit=0 functions=2 hit=0
Overall coverage rate:
  source files: 72
  lines.......: 70.2% (1444 of 2057 lines)
  functions...: 46.4% (1798 of 3873 functions)
Message summary:
  101 warning messages:
    count: 1
    inconsistent: 100
  196 ignore messages:
    inconsistent: 196
```
