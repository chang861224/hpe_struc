# Get submodule source
git submodule init
git submodule update

# smore compile
cd src/smore
make
cd ../../

# struc2vec get submodule and compile 
cd src/struc2vec
git submodule init
git submodule update
sh word2vec_compile.sh
cd ../../
