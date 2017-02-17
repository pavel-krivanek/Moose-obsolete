accessing
parameters
	<MSEProperty: #parameters type: #FAMIXParameterType> <multivalued> <derived>
	<MSEComment: 'Parameter types of this class.'>
	
	^self types select: [:each | each isParameterType]