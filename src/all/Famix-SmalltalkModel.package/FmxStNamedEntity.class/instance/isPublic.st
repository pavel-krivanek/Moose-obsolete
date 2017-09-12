accessing
isPublic
	<MSEProperty: #isPublic type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities accessible from anywhere. Language dependent.'>	

	^ self modifiers includes: #public