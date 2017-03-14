*Famix-Extensions
isPrivate
	<MSEProperty: #isPrivate type: #Boolean> <derived>
	<MSEComment: 'Flag true for entities invisible out of their owner scope. Language dependent.'>
	
	^ self modifiers includes: #private