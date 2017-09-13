adding
addAsTargetFor: aClassController
	self assert: (self canBeTargetFor: aClassController).
	aClassController createModelIn: self andShowInDiagram: self