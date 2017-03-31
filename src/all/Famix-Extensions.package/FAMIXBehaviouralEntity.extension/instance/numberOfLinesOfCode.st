*Famix-Extensions
numberOfLinesOfCode
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<MSEComment: 'The number of lines of code in a method.'>
	^ self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [ 
			"This is needed for providing backward compatibility to exporters that 
			use LOC as a property name"
			self
				lookUpPropertyNamed: #LOC
				computedAs: [ 
					self mooseModel isSmalltalk
						ifTrue: [ self computeNumberOfLinesOfCodeIfSmalltalk ]
						ifFalse: [ self computeNumberOfLinesOfCode ] ] ]