set -e

git clone git@github.com:peteruhnak/file-dialog.git
git clone git@github.com:OpenPonk/openponk-model.git
git clone git@github.com:OpenPonk/openponk.git
git clone git@github.com:OpenPonk/uml-shapes.git
git clone git@github.com:OpenPonk/uml-metamodel.git
git clone git@github.com:OpenPonk/class-editor.git

rm -rf Moose/src/all/FileDialog.package
rm -rf Moose/src/all/FileDialog-Tests.package

rm -rf Moose/src/all/OpenPonk-Model.package

rm -rf Moose/src/all/OpenPonk-Core.package
rm -rf Moose/src/all/OpenPonk-Trachel.package
rm -rf Moose/src/all/OpenPonk-Roassal2.package
rm -rf Moose/src/all/OpenPonk-Spec.package

rm -rf Moose/src/all/OpenPonk-UML-DI.package

rm -rf Moose/src/all/OP-UML-Meta.package
rm -rf Moose/src/all/OP-UML-Metamodel.package

rm -rf Moose/src/all/OpenPonk-ClassEditor.package


cp -r file-dialog/repository/FileDialog.package Moose/src/all
cp -r file-dialog/repository/FileDialog-Tests.package Moose/src/all

cp -r openponk-model/repository/OpenPonk-Model.package Moose/src/all

cp -r openponk/repository/OpenPonk-Core.package Moose/src/all
cp -r openponk/repository/OpenPonk-Trachel.package Moose/src/all
cp -r openponk/repository/OpenPonk-Roassal2.package Moose/src/all
cp -r openponk/repository/OpenPonk-Spec.package Moose/src/all

cp -r uml-shapes/repository/OpenPonk-UML-DI.package Moose/src/all

cp -r uml-metamodel/repository/OP-UML-Meta.package Moose/src/all
cp -r uml-metamodel/repository/OP-UML-Metamodel.package Moose/src/all

cp -r class-editor/repository/OpenPonk-ClassEditor.package Moose/src/all