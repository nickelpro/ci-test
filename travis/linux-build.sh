# Remove the pre-installed cmake from path
PATH=`echo ${PATH} | awk -v RS=: -v ORS=: '/cmake/ {next} {print}'`
# Cleanup some weird whitespace issues
PATH={$PATH%[:space:]*}
gcc-10 --version
CC=gcc-10
CXX=g++-10
cmake --version
cmake . -G Ninja
cmake --build . --target main
