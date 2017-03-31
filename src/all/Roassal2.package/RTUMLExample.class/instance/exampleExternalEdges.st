sources
exampleExternalEdges

| b |
b := RTUMLClassBuilder new.
b
    instanceVariables: #instVarNames;
    methodselector: #selector;
    methodsNames: #();
    attributeselector: #yourself.

b attributeShape color: Color black.
b methodShape color: Color black.
b classNameShape color: Color black.
b lineShape color: Color black.
b boxShape borderColor: Color black.

b
    addObjects: (Array with: RTView with: TRCanvas);
    treeLayout.

b shape arrowedLine
        color: Color black;
        withHorizontalAttachPoint.

b edgesDo: [ :edges|
	edges connectFrom: 'trCanvas' to: TRCanvas. ].        
^ b