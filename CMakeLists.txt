cmake_minimum_required(VERSION 3.10)

# Указываем имя проекта
project(MyProject VERSION 1.0 LANGUAGES CXX)

# Указываем стандарт C++
set(CMAKE_CXX_STANDARD 20)

# Указываем директорию для заголовочных файлов
include_directories(
  ${CMAKE_CURRENT_SOURCE_DIR}/Boost_regex/include
  ${CMAKE_CURRENT_SOURCE_DIR}/ChemKinReader/include
  ${CMAKE_CURRENT_SOURCE_DIR}/auto_ignition
  ${CMAKE_CURRENT_SOURCE_DIR}/sundials/sundials-6.5.1/include
  ${CMAKE_CURRENT_SOURCE_DIR}/sundials/sundials-6.5.1/include
  ${CMAKE_CURRENT_SOURCE_DIR}/sundials_build/include
)

# Указываем путь к библиотекам SUNDIALS
set(SUNDIALS_INCLUDE_DIR
  ${CMAKE_CURRENT_SOURCE_DIR}/sundials-6.5.1/include
  CACHE PATH "Location of SUNDIALS header files"
)

if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    set(SUNDIALS_LIBRARY_DIR
    ${CMAKE_CURRENT_SOURCE_DIR}/sundials_build/bin/Debug
    CACHE PATH "Location of SUNDIALS libraries"
)
else()
    set(SUNDIALS_LIBRARY_DIR
  ${CMAKE_CURRENT_SOURCE_DIR}/sundials_build/bin/Release
  CACHE PATH "Location of SUNDIALS libraries"
)
endif()


# Находим библиотеки SUNDIALS
find_library(SUNDIALS_IDA_LIB
  NAMES sundials_ida
  HINTS ${SUNDIALS_LIBRARY_DIR}
  DOC "IDA library"
)

find_library(SUNDIALS_KINSOL_LIB
  NAMES sundials_kinsol
  HINTS ${SUNDIALS_LIBRARY_DIR}
  DOC "KINSOL library"
)

find_library(SUNDIALS_NVEC_LIB
  NAMES sundials_nvecserial
  HINTS ${SUNDIALS_LIBRARY_DIR}
  DOC "NVECTOR_SERIAL library"
)

find_library(SUNDIALS_MANYVEC_LIB
  NAMES sundials_nvecmanyvector
  HINTS ${SUNDIALS_LIBRARY_DIR}
  DOC "NVECTOR_MANYVECTOR library"
)

# Проверяем, найдены ли библиотеки
if(NOT SUNDIALS_KINSOL_LIB OR NOT SUNDIALS_IDA_LIB OR NOT SUNDIALS_NVEC_LIB)
  message(FATAL_ERROR "Required SUNDIALS libraries not found!")
endif()

# Список библиотек SUNDIALS
set(SUNDIALS_LIBRARIES
  ${SUNDIALS_IDA_LIB}
  ${SUNDIALS_KINSOL_LIB}
  ${SUNDIALS_NVEC_LIB}
  ${SUNDIALS_MANYVEC_LIB}
)

# Автоматически находим все .cpp файлы
file(GLOB SOURCES
    src/*.cpp
    Boost_regex/src/*.cpp
    ChemKinReader/src/*.cpp
    auto_ignition/*.cpp
)

# Проверяем, были ли найдены файлы
if(NOT SOURCES)
    message(FATAL_ERROR "No source files found!")
endif()

add_executable(MyExecutable_1 ${SOURCES})
	 
# Линкуем с библиотеками SUNDIALS
target_link_libraries(MyExecutable_1 ${SUNDIALS_IDA_LIB} ${SUNDIALS_KINSOL_LIB} ${SUNDIALS_NVEC_LIB})

set_target_properties(MyExecutable_1 PROPERTIES
  RUNTIME_OUTPUT_DIRECTORY "D:/Storage/Daniil/auto_ignition/auto_ignition/sundials_build/bin"
)