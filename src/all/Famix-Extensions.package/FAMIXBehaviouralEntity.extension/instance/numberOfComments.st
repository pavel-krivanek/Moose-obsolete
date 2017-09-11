*Famix-Extensions
numberOfComments
	<MSEProperty: #numberOfComments type: #Number>
	<MSEComment: 'The number of comment fragments'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfComments computedAs: [ self comments size ]