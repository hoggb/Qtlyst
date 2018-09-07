file(GLOB_RECURSE project_SRCS *.cpp *.h)

set(project_SRCS
    ${project_SRCS}
    ${TEMPLATES_SRC}
)

# Create the application
add_library(project SHARED ${project_SRCS})

# Link to Cutelyst
target_link_libraries(project
    Cutelyst::Core
    Qt5::Core
    Qt5::Network
)

