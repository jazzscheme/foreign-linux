if [ ! -d foreign ]; then
  mkdir foreign
fi

cd foreign

for i in jazz-bz2-linux jazz-cairo-linux jazz-fontconfig-linux jazz-freetype-linux jazz-git-linux jazz-opengl-linux jazz-pixman-linux jazz-png-linux jazz-stream-linux jazz-zlib-linux
do
  jas clone togethersphere.com/$i
done
