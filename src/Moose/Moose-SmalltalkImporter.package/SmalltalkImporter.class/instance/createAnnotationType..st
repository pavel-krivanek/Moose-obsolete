private-entity-creation
createAnnotationType: aPragmaNode 
	| pragmaAnnotationType |
	pragmaAnnotationType := annotationTypes
		at: aPragmaNode selector
		put: FAMIXAnnotationType new.
	pragmaAnnotationType name: aPragmaNode selector.
	aPragmaNode selector isUnary ifFalse: [
		(aPragmaNode selector piecesCutWhere: [:a :b | a = $: ]) do: [ :each | 
			| attribute |
			attribute := FAMIXAnnotationTypeAttribute new.
			attribute name: (each removeSuffix: ':').
			attribute parentAnnotationType: pragmaAnnotationType.
			self addEntity: attribute
			] ].
	^ pragmaAnnotationType