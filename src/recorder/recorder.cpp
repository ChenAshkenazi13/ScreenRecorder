#include "recorder.h"
#include <cstdlib>
#include <iostream>

void Recorder::RecordScreen()
{
    int result = system(recordScreenCommand.c_str());
    if(result != 0)
    {
        std::perror("RECORDING FAILED\n");
        return;
    }

    std::cout << "RECORDING SAVED" << "\n";
}