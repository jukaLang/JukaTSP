#!/bin/sh
cd $(dirname "$0")


cp /usr/trimui/lib/libSDL2-2.0.so.0 .
mv libSDL2-2.0.so.0 libSDL2.so
cp /usr/trimui/lib/libSDL2_ttf-2.0.so.0   .
mv libSDL2_ttf-2.0.so.0 libSDL2_ttf.so
cp /usr/trimui/lib/libSDL2_image-2.0.so.0  .
mv libSDL2_image-2.0.so.0 libSDL2_image.so

export LD_LIBRARY_PATH="/usr/trimui/lib:$LD_LIBRARY_PATH"

./Juka &> errors.txt


exit 0