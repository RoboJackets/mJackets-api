git clone https://github.com/akeener97/mJackets-test2.git
cd mjackets-test2
git submodule init && git submodule update
cd mjackets-api
git submodule init && git submodule update
cd ..
cmake configure .
cmake build

