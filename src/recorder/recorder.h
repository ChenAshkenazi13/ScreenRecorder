#ifndef RECORDER
    #define RECORDER
#include <string>

class Recorder{
    public: 
        void RecordScreen();
        std::string outputDirectoryPath = " ../../../../Records/";
    private:
        int recordTime = 10;
        std::string outputFileName = "output";
        std::string outputFileFormat = ".mp4";
        
        const std::string recordScreenCommand = "ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i :0.0 -t " + std::to_string(recordTime) + outputDirectoryPath 
                + outputFileName + outputFileFormat;

};

#endif