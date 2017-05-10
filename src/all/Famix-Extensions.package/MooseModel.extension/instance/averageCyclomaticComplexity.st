*Famix-Extensions
averageCyclomaticComplexity
	<MSEProperty: #averageCyclomaticComplexity type: #Number>
	<derived>
	<MSEComment: 'The average cyclomatic complexity for methods'>
	^ self lookUpPropertyNamed: #averageCyclomaticComplexity computedAs: [ (self allMethods collect: #cyclomaticComplexity) ifEmpty: [ 1 ] ifNotEmpty: #average ]