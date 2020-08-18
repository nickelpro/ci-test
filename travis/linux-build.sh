# Remove the pre-installed cmake from path
PATH=`echo ${PATH} | awk -v RS=: -v ORS=: '/cmake/ {next} {print}'`
# Cleanup some weird whitespace issues
PATH={$PATH%[:space:]*}
cmake --version
cmake . -G Ninja
cmake --build . --target main
