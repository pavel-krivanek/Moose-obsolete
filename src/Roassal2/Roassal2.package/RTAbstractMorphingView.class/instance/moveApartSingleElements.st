configuration
moveApartSingleElements
	| rms singleElements notSingleElements |
	afterAllTranslationsBlocks add: [ :view | 
		rms := referenceModels elements collect: #model.
		singleElements := (view elements reject: [ :e | rms includes: e model ]).
		notSingleElements := (view elements select: [ :e | rms includes: e model ]).
		RTGridLayout on: singleElements.
		TRConstraint move: singleElements onTheRightOf: notSingleElements ]