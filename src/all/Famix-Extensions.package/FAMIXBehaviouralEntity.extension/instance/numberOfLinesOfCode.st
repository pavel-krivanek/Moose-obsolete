*Famix-Extensions
numberOfLinesOfCode
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<MSEComment: 'The number of lines of code in a method.'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [ self mooseModel isSmalltalk
				ifTrue: [ self computeNumberOfLinesOfCodeIfSmalltalk ]
				ifFalse: [ self computeNumberOfLinesOfCode ] ]