private
listEndOffset
	^ listString last == $*
		ifTrue: [2] "')*' size"
		ifFalse: [1] "')' size"