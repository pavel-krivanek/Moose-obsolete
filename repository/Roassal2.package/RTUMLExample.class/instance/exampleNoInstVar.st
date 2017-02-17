sources
exampleNoInstVar

	| b |
	b := RTUMLClassBuilder new.
	   b instanceVariables: #instVarNames.
	   b methodselector: #selector.
		b methodsNames: [ :cls | cls rtmethods sortedAs: #selector ].
	   b attributeselector: ''.


	b addObjects: (RTShape withAllSubclasses).
	b layout tree.
	b build.
	^ b view.