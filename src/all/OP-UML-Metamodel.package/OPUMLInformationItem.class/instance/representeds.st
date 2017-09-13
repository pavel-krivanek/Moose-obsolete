accessing
representeds
	"Determines the classifiers that will specify the structure and nature of the information. An information item represents all its represented classifiers."
	^ representeds ifNil: [ representeds := OrderedCollection new ]