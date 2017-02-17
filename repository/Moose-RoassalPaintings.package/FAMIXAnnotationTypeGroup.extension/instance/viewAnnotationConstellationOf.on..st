*Moose-RoassalPaintings
viewAnnotationConstellationOf: aClassGroup on: view
	view shape ellipse color: (Color veryLightGray alpha: 0.5); borderColor: Color transparent.
	view interaction menu action: #mooseMenuMorph.
	view nodes: aClassGroup.

	view shape label 
		fillColor: Color gray;
		text: #name;
		height: (RTNFontLinearNormalizer inContext: self withCommand: [:each | 
					(each instances collectAsSet: [:inst | inst annotatedEntity typeScope]) size max: 20]).
	view interaction menu action: #mooseMenuMorph.
	view nodes: (self select: [:each | each annotatedEntities notEmpty ]).

	view shape line color: (Color veryVeryLightGray alpha: 0.5); width: 1.
	view edges source: self connectFromAll: [:each | each annotatedEntities collectAsSet: #typeScope ] to: #yourself.
	view layout force.
	view view pushBackEdges