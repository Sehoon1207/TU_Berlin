# CMake generated Testfile for 
# Source directory: /mnt/c/code/TU_Berlin/04_RuVS/praxis1
# Build directory: /mnt/c/code/TU_Berlin/04_RuVS/praxis1/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(Execute "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/test/execute.py" "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/webserver")
set_tests_properties(Execute PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;14;add_test;/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;0;")
add_test(Listen "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/test/listen.py" "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/webserver")
set_tests_properties(Listen PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;15;add_test;/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;0;")
add_test(Reply "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/test/reply.py" "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/webserver")
set_tests_properties(Reply PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;16;add_test;/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;0;")
add_test(Packets "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/test/packets.py" "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/webserver")
set_tests_properties(Packets PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;17;add_test;/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;0;")
add_test(HTTPReply "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/test/httpreply.py" "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/webserver")
set_tests_properties(HTTPReply PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;18;add_test;/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;0;")
add_test(HTTPReplies "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/test/httpreplies.py" "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/webserver")
set_tests_properties(HTTPReplies PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;19;add_test;/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;0;")
add_test(StaticContent "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/test/static_content.py" "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/webserver")
set_tests_properties(StaticContent PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;20;add_test;/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;0;")
add_test(DynamicContent "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/test/dynamic_content.py" "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/webserver")
set_tests_properties(DynamicContent PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;21;add_test;/mnt/c/code/TU_Berlin/04_RuVS/praxis1/CMakeLists.txt;0;")
