accessing
isRead
	<MSEProperty: #isRead type: #Boolean> <derived>
	<MSEComment: 'Read access'>
	
	^ isWrite isNil ifTrue: [ false ] ifFalse: [ isWrite not ]