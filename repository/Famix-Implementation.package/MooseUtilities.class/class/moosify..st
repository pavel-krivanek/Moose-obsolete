naming conventions
moosify: aString

	^aString
		copyReplaceAll: self smalltalkNamespaceSeparator
		with: self famixNamespaceSeparator