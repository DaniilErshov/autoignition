# Install script for directory: D:/Storage/Daniil/sundials/sundials-6.5.1/examples/sunlinsol/sptfqmr/serial

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/SUNDIALS")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial/test_sunlinsol_sptfqmr_serial.c;C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial/test_sunlinsol.h;C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial/test_sunlinsol.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial" TYPE FILE FILES
    "D:/Storage/Daniil/sundials/sundials-6.5.1/examples/sunlinsol/sptfqmr/serial/test_sunlinsol_sptfqmr_serial.c"
    "D:/Storage/Daniil/sundials/sundials-6.5.1/examples/sunlinsol/sptfqmr/serial/../../test_sunlinsol.h"
    "D:/Storage/Daniil/sundials/sundials-6.5.1/examples/sunlinsol/sptfqmr/serial/../../test_sunlinsol.c"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial/test_sunlinsol_sptfqmr_serial.c;C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial/test_sunlinsol.h;C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial/test_sunlinsol.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial" TYPE FILE FILES
    "D:/Storage/Daniil/sundials/sundials-6.5.1/examples/sunlinsol/sptfqmr/serial/test_sunlinsol_sptfqmr_serial.c"
    "D:/Storage/Daniil/sundials/sundials-6.5.1/examples/sunlinsol/sptfqmr/serial/../../test_sunlinsol.h"
    "D:/Storage/Daniil/sundials/sundials-6.5.1/examples/sunlinsol/sptfqmr/serial/../../test_sunlinsol.c"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial/CMakeLists.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "C:/Program Files (x86)/SUNDIALS/examples/sunlinsol/sptfqmr/serial" TYPE FILE FILES "D:/Storage/Daniil/sundials_build/examples/sunlinsol/sptfqmr/serial/CMakeLists.txt")
endif()

