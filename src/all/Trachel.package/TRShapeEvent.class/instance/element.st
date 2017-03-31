accessing
element
	"Could be any object"

	^ self shape class = TRCanvas
		ifTrue: [ nil ]
		ifFalse: [ self shape element ]