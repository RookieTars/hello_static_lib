ABI=$1

if [ "$ABI" == "" ];then
  ABI="arm64-v8a"
fi

bazel_build() { 
    bazel build \
        $1:$2 \
        --config android \
        --cpu=$ABI 

    mkdir -p ./build/$ABI/libs/
    cp ./bazel-bin/$1/lib$2.a ./build/$ABI/libs/
 }

    $(bazel_build "srcs/libs/common_lib" "lib_common")
    $(bazel_build "srcs/libs/static_lib" "_static_test")