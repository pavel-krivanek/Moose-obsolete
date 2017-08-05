accessing
isWrite
	<MSEProperty: #isWrite type: #Boolean>
	<MSEComment: 'Write access'>
	
	^ isWrite ifNil: [ false ]