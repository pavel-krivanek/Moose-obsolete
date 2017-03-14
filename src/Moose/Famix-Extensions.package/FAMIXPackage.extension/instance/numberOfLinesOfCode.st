*famix-extensions
numberOfLinesOfCode
	<MSEProperty: #numberOfLinesOfCode type: #Number>
	<derived>
	<MSEComment: 'The number of lines of code in a namespace'>
	
	^self
		lookUpPropertyNamed: #numberOfLinesOfCode
		computedAs: [
			self methods inject: 0 into: [ :sum :each | sum + each numberOfLinesOfCode ] ]