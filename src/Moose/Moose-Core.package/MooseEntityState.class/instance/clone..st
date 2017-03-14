initialize-release
clone: newOwner 
	 
	| newState | 
	newState := self copy. 
	newState initialize: newOwner. 
	newState model: nil. 
	^newState