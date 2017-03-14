accessing
mooseModel

	"return the mooseGroup concerned by the visualization"
	^mooseModel ifNil: [mooseModel := self mooseGroup mooseModel]  