# buildフォルダで実行すること
g++ --coverage ../test.cpp ../lib_actual.cpp -o actual
./actual
lcov -c -d . -o ../actual.info
rm -r *
g++ --coverage ../test.cpp ../lib_stub.cpp -o stub
./stub
lcov -c -d . -o ../stub.info
rm -r *
lcov -a ../stub.info -a ../actual.info -o total.info
genhtml total.info
# explorer.exe index.html
