support
collectMethodNames: javaClassResult
	| name methods |
	self halt: 'deprecated'.
	name := javaClassResult first.
	methods := javaClassResult second.
	
	^ methods collect: [ :m | Array with: name with: methods first with: methods second ]