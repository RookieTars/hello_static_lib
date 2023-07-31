ABI=$1

if [ "$ABI" == "" ];then
  ABI="arm64-v8a"
fi

bazel_build() { 
    bazel build \
        srcs/libs/static_lib:_static_test \
        --config android \
        --cpu=$ABI 

    mkdir -p ./build/$ABI/libs/
    cp ./bazel-bin/srcs/libs/static_lib/lib_static_test.a ./build/$ABI/libs/
 }

    bazel_build