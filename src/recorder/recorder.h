#ifndef RECORDER
#define RECORDER

#include <string>

class Recorder{
    public: 
        void RecordScreen(std::string fileName, std::string fileFormat, int recordTime);
        void RecordScreen(const std::string& recordCommand);
        std::string outputDirectoryPath = "../../../../Records/";
        std::string outputFileName = "output4";
        std::string outputFileFormat = ".mp4";
    private:
        int recordTime = 10;
        
        const std::string recordScreenCommand = "ffmpeg -f x11grab -video_size 1920x1080 -framerate 25 -i :0.0 -t " + std::to_string(recordTime) + " " 
                + outputDirectoryPath + outputFileName + outputFileFormat;

        std::string BuildRecordCommand(std::string fileName, std::string fileFormat, int recordTime) const; 

};

#endif