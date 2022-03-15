# Install script for directory: /home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/libleveldb.a")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib" TYPE STATIC_LIBRARY FILES "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/build/libleveldb.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/leveldb" TYPE FILE FILES
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/c.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/cache.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/comparator.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/db.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/dumpfile.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/env.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/export.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/filter_policy.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/iterator.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/options.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/slice.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/status.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/table_builder.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/table.h"
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/include/leveldb/write_batch.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbTargets.cmake"
         "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/build/CMakeFiles/Export/_home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbTargets.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb" TYPE FILE FILES "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/build/CMakeFiles/Export/_home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
     "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbTargets-debug.cmake")
    if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
    if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
        message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
    endif()
file(INSTALL DESTINATION "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb" TYPE FILE FILES "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/build/CMakeFiles/Export/_home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbTargets-debug.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbConfig.cmake;/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb/leveldbConfigVersion.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/lib/cmake/leveldb" TYPE FILE FILES
    "/home/reverts/.cargo/registry/src/github.com-1ecc6299db9ec823/leveldb-sys-2.0.9/deps/leveldb-1.22/cmake/leveldbConfig.cmake"
    "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/build/leveldbConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/reverts/Repos/rust_training/leveldb/target/debug/build/leveldb-sys-56cb13f779898ed0/out/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
