RTUMLExample new installTitle: 'BlackColor' 
		code:
		'

| b |
b := RTUMLClassBuilder new
   instanceVariables: #instVarNames;
   methodselector: #selector;
	methodsNames: #methods;
	attributeselector: #yourself.
b attributeShape color: Color black.
b methodShape color: Color black.
b classNameShape color: Color black.
b lineShape color: Color black.
b boxShape borderColor: Color black.

b addObjects: (TRAbstractArrowHeadShape withAllSubclasses ).
b layout tree.

b build.
^b view'