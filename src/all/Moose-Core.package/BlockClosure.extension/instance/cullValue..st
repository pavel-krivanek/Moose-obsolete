*moose-core
cullValue: arguments
	"Evaluates the receiver with as many arguments as requiered."

	self numArgs = 0 ifTrue: [ ^self value ].
	self numArgs = 1 ifTrue: [ ^self value: arguments first ].
	^self valueWithArguments: (arguments  copyFrom: 1 to: self numArgs).