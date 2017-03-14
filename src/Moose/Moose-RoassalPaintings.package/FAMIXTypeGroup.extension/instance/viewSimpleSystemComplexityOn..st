*Moose-RoassalPaintings
viewSimpleSystemComplexityOn: b 
	"b is an instance of RTMondrian"
	b shape rectangle
		height: [ :cls | cls numberOfMethods max: 5];
		width: [ :cls | cls numberOfAttributes max: 5];
		linearFillColor: #numberOfLinesOfCode within: self entities;
		borderColor: Color lightGray.
	b interaction popupText.
	b interaction menu: [ :each | each mooseMenuMorph ].
	b nodes: self entities.
	b edges connectFromAll: [ :cls | cls directSuperclasses ].
	b layout tree 