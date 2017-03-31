grammar
elements
	^ super elements ==> [ :nodes | nodes reject: [ :each | each isKindOf: PPToken ] ]