

#include <iostream>
#include <string>

#include <spdlog/spdlog.h>
#include <lz4.h>
#include <lz4hc.h>

using namespace std;

int main(){

    spdlog::warn("Hello, World!");
    
    
    std::string msg = "Ryan from Artis";
    char buffer[1024];

    auto size = LZ4_compress_HC(msg.c_str(), buffer, msg.size() + 1, 1024, LZ4HC_CLEVEL_MAX);

}