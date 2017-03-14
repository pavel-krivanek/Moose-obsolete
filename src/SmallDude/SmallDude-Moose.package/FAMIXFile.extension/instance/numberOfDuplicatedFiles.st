*SmallDude-Moose-properties
numberOfDuplicatedFiles
	<MSEProperty: #numberOfDuplicatedFiles type: #Number>
	<MSEComment: 'The number of distinct files that contain fragments duplicated in this file'>
	<derived>
	^ self lookUpPropertyNamed: #numberOfDuplicatedFiles computedAs: [ self allExternalFiles size ]