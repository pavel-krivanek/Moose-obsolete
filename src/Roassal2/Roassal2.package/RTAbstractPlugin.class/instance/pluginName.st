public
pluginName
	self doesItLoadCode ifFalse: [ ^ self label ].
	^ self isLoaded 
		ifTrue: [ 'Update ', self label ]
		ifFalse: [ 'Load ', self label ]