#! /bin/sh

cd ../../foreign/jazz-git-linux

LIBGIT2=/home/cartier/Devel/system/libgit2-1.3.0

if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi

cp -r $LIBGIT2/include include

cpshared() {
    cp $LIBGIT2/build/$1.$2 lib/$1.$3
    patchelf --set-rpath '$ORIGIN' lib/$1.$3
    ln -sr lib/$1.$3 lib/$1
}

mkdir lib

# use 1.3 to match soname
cpshared libgit2.so 1.3.0 1.3
