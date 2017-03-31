statements-elements
joinSource  
	^super joinSource ==> [ :token |
		| selectNode | 
		selectNode := SQLSelectFromPartNode new.
token
		]