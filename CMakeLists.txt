cmake_minimum_required(VERSION 2.8.3)
project(result_pinner)

find_package(catkin REQUIRED COMPONENTS
  rospy
)

# catkin_python_setup()

catkin_package()

catkin_install_python(
    PROGRAMS
        scripts/pinner_node
    DESTINATION
        ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(
    FILES
        launch/pinner.launch
    DESTINATION
        ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)

