*Famix-Extensions
numberOfComments
	<MSEProperty: #numberOfComments type: #Number>
	<MSEComment: 'The number of comment fragments'>
	
	^self
		lookUpPropertyNamed: #numberOfComments
		computedAs: [ self comments size ]