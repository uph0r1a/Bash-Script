for i in $(seq 18 23); do #edit n = the number of files
    cat << EOF > ex$i.cpp
#include <iostream>
#include <fstream>
using namespace std;

int main(int argc, char const *argv[])
{

    return 0;
}
EOF
done