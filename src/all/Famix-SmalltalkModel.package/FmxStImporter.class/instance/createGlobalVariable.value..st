private-entity-creation
createGlobalVariable: name value: value 
	 
	| global declaredType | 
	global := globals 
		at: name 
		put: FmxStGlobalVariable new. 
	global name: name. 
	global declaredType: (self ensureClass: value class ).
	^ global