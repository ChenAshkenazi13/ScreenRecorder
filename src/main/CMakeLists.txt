add_executable (ScreenRecorder main.cpp main.h)
target_link_libraries (ScreenRecorder PRIVATE Recorder Client)