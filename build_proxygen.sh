version="2021.04.26.00"

git checkout v${version}

cd proxygen
./build.sh --no-tests --no-jemalloc
./install.sh
cd ..

mkdir -p tmp/lib tmp/include
cp -r proxygen/_build/lib/. tmp/lib
cp -r proxygen/_build/deps/lib/. tmp/lib
cp -r proxygen/_build/deps/include/. tmp/include
cp -r proxygen/_build/include/. tmp/include
tar -czf ${version}.tar.gz -C tmp/ lib include
rm -r tmp proxygen/_build