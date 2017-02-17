*Famix-Extensions
numberOfComments
	<MSEProperty: #numberOfComments type: #Number>
	<derived>
	<MSEComment: 'The number of comments in a class'>

	^ self lookUpPropertyNamed: #numberOfComments computedAs: [
		self comments size + 
		(self methods asArray inject: 0 into: [:sum : el| 
			el numberOfComments + sum ]) ]