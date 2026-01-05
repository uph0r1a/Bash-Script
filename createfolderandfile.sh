# Loop from 1 to 20 for creating folders and files
for i in {1..20}
do
    # Create the folder for each exercise
    folder="ex $i"
    mkdir "$folder"

    # Create the .cpp file with content
    cat > "$folder/ex$i.cpp" <<EOL
#include <iostream>
#include <ex$i.h>
using namespace std;

int main(int argc, char const *argv[])
{

    return 0;
}
EOL

    # Create the .h file with content
    cat > "$folder/ex$i.h" <<EOL
#ifndef EX${i}_H
#define EX${i}_H

#include <iostream>

class Ex$i { 
public:

private:

};

#endif
EOL

    echo "Created folder $folder with ex$i.cpp and ex$i.h"
done
