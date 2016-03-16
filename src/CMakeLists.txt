enable_language(Fortran)

set(MAC_SRC_DIR "{${CMAKE_CURRENT_SOURCE_DIR}}")
add_custom_command(OUTPUT elasticity.f90
    COMMAND "maxima" ARGS --userdir=${MAC_SRC_DIR} -b elasticity.mac
    DEPENDS elasticity.mac
)

file(GLOB source *.cpp)

add_executable(arcsim ${source} elasticity.f90)
target_link_libraries(arcsim
    taucs json alglib
    blas lapack
    gmp
    ${PNG_LIBRARIES}
    ${OPENGL_LIBRARIES} ${GLUT_LIBRARIES}
    ${Boost_LIBRARIES}
)
