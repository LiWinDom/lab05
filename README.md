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
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD
-- Performing Test CMAKE_HAVE_LIBC_PTHREAD - Success
-- Found Threads: TRUE
-- Configuring done (2.6s)
-- Generating done (0.0s)
-- Build files have been written to: /Users/LiWinDom/Documents/Code/timp/lab05/cmake-build
```
