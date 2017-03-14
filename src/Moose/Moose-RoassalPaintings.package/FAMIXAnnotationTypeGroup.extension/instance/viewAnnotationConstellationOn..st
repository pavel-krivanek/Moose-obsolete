*Moose-RoassalPaintings
viewAnnotationConstellationOn: view
	| annotated classes |

	annotated := self flatCollect: #annotatedEntities.
	classes := annotated allClasses asSet.
	classes addAll: (annotated allMethods collect: #parentType).
	self viewAnnotationConstellationOf: classes on: view