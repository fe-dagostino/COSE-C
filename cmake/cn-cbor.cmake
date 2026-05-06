if(COSE_C_USE_FIND_PACKAGE)
  find_package(cn-cbor)
else()
  FetchContent_Declare(
    cn-cbor
    GIT_REPOSITORY https://github.com/fe-dagostino/cn-cbor.git
    GIT_TAG master
  )

  set(CN_CBOR_USE_CONTEXT     ${COSE_C_USE_CONTEXT} CACHE BOOL "" FORCE)
  set(CN_CBOR_VERBOSE                           OFF CACHE BOOL "" FORCE) 
  set(CN_CBOR_OPTIMIZE                          OFF CACHE BOOL "" FORCE)
  set(CN_CBOR_FATAL_WARNINGS                    OFF CACHE BOOL "" FORCE)
  set(CN_CBOR_COVERALLS                         OFF CACHE BOOL "" FORCE)
  set(CN_CBOR_COVERALLS_SEND                    OFF CACHE BOOL "" FORCE)
  set(CN_CBOR_BUILD_DOCS                        OFF CACHE BOOL "" FORCE)
  set(CN_CBOR_BUILD_TESTS                       OFF CACHE BOOL "" FORCE)
  set(CN_CBOR_NO_FLOATS                         OFF CACHE BOOL "" FORCE)
  set(CN_CBOR_ALIGN_READS                       OFF CACHE BOOL "" FORCE)
  set(CN_CBOR_RUN_CLANG_TIDY                    OFF CACHE BOOL "" FORCE)
  
  set(BUILD_SHARED_LIBS        ${BUILD_SHARED_LIBS} CACHE BOOL "" FORCE)
 
  FetchContent_MakeAvailable(cn-cbor)
endif()