naming conventions
demoosify: aString

	^aString
		copyReplaceAll: self famixNamespaceSeparator
		with: self smalltalkNamespaceSeparator