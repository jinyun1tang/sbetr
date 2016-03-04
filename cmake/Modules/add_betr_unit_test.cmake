# This function adds a unit test executable for Betr.
function(add_betr_unit_test exe)
  add_executable(${exe} ${ARGN})
  target_link_libraries(${exe} betr;${BETR_TPLS})
  set_target_properties(${exe} PROPERTIES COMPILE_FLAGS "-DCMAKE_CURRENT_SOURCE_DIR=\\\"${CMAKE_CURRENT_SOURCE_DIR}\\\"")
  add_test(${exe} ${exe})
  set_tests_properties(${exe} PROPERTIES WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})
endfunction()
