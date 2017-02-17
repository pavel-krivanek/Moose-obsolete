compatibility with visitor
createGlobalVariable: name value: value 
	 
	| global | 
	global := self globals 
		at: name 
		put: FAMIXGlobalVariable new. 
	global name: name. 
	Smalltalk at: name ifPresent: [:each | global declaredType: each class mooseName].
	^global