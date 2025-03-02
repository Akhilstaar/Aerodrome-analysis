#include "Aerodrome.h"
#include <iostream>
#include <fstream>
#include <chrono>

using namespace std;
using namespace chrono;

int main(int argc, char* argv[]){
    cin.tie(0); ios::sync_with_stdio(0);

    if (argc != 2) {
        cerr << "Usage: " << argv[0] << " <trace>" << endl;
        cerr << "trace: Absolute path to the input trace file" << endl;
        return 1;
    }

    string tracefile = argv[2];

    // processing the file
    vector<string> tracedata;
    ifstream file(tracefile);

    if(!file.is_open()){
        cerr << "Error: Unable to open file " << tracefile << endl;
        return 1;
    }

    string line;
    while (getline(file, line)) {
        tracedata.push_back(line);
    }
    tracedata.pop_back();  // last empty line

    file.close();

    // Passing the file contents to the algo's
    // probably, I should've checked validity earlier to avoid overhead

    Aerodrome(tracedata);

    return 0;
}