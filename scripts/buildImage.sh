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

./pharo $IMAGE_NAME.image eval metacello install github://pavel-krivanek/Moose:FamixNG-navigation/src BaselineOfMoose


