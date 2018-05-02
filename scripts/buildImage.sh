set -e

wget --quiet -O - http://get.pharo.org/70+vm | bash

IMAGE_NAME=Pharo

if [ $# -eq 0 ]
  then
    echo "No image name supplied"
  else
    IMAGE_NAME="$1"
    echo "Image name: $IMAGE_NAME"
    ./pharo Pharo.image save $IMAGE_NAME
fi

./pharo $IMAGE_NAME.image st Moose/patches/patchPharo7.st --save --quit

./pharo $IMAGE_NAME.image eval --save  "Metacello new baseline: 'Moose'; repository: 'tonel://./Moose/src/all'; load: #BasicMetamodelling."


