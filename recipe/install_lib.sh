mkdir cmake_build
pushd cmake_build
cmake .. -G "$CMAKE_GENERATOR" \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DgRPC_CARES_PROVIDER="package" \
      -DgRPC_GFLAGS_PROVIDER="package" \
      -DgRPC_PROTOBUF_PROVIDER="package" \
      -DgRPC_SSL_PROVIDER="package" \
      -DgRPC_ZLIB_PROVIDER="package" \
      -DOPENSSL_ROOT_DIR=$PREFIX \
      -DCMAKE_INSTALL_PREFIX:PATH=$PREFIX
cmake --build . --config Release --target install
