set -e

wget https://ci.inria.fr/moose/view/Moose%206.1/job/moose-6.1/lastSuccessfulBuild/artifact/moose-6.1.zip

wget -O - http://get.pharo.org/60+vm | bash


cp ./Moose/scripts/export/*.ston ./

unzip -o moose-6.1.zip 

./pharo moose-6.1.image ./Moose/scripts/export/installExporter.st --save --quit

mv ./Moose/src/BaselineOfMoose.package ./Moose/
mv ./Moose/src/.filetree ./Moose/
rm -rf ./Moose/src/*
mv ./Moose/BaselineOfMoose.package ./Moose/src/
mv ./Moose/.filetree ./Moose/src/

./pharo moose-6.1.image ./Moose/scripts/export/export.st --quit


