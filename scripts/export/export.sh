set -e

wget https://ci.inria.fr/moose/view/Moose%206.1/job/moose-6.1/lastSuccessfulBuild/artifact/moose-6.1.zip

wget -O - http://get.pharo.org/60+vmTLatest | bash


cp ./Moose/scripts/export/*.ston ./

unzip -o moose-6.1.zip 

./pharo moose-6.1.image ./Moose/scripts/export/installExporter.st --save --quit

mv ./Moose/src/all/BaselineOfMoose.package ./Moose/
mv ./Moose/src/all/.filetree ./Moose/
rm -rf ./Moose/src/all/*
mv ./Moose/BaselineOfMoose.package ./Moose/src/all/
mv ./Moose/.filetree ./Moose/src/all

./pharo moose-6.1.image ./Moose/scripts/export/export.st --quit


