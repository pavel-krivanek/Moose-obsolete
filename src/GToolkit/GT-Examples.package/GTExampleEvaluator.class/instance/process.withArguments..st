private
process: anExample withArguments: aBlock
	| currentResult arguments |
	currentResult := self newResultFor: anExample.
	arguments := nil.
	anExample hasValidDependencies " dynamic check "
		ifFalse: [ ^ self handleDependencyErrorFor: anExample ].
	self 
		do: [ 
			arguments := aBlock value. 
			currentResult returnValue: (self 
				primitiveProcessExample: anExample 
				withArguments: arguments) ]
		on: anExample signalableExceptions
		do: [ :exception | currentResult expectedError: exception ].
	processed add: currentResult.
	self
		do: [ self processAfter: anExample ]
		on: anExample signalableExceptions
		do: [ :exception | currentResult expectedError: exception ].
	anExample == self example ifTrue: [ result := currentResult ].
	anExample exceptions signaledBy: currentResult expectedError.
	^ currentResult returnValue