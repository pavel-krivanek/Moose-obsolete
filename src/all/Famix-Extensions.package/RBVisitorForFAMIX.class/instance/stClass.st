private-accessing
stClass
	stClass isNil ifTrue: [
		stClass := FAMIXNameResolver 
			smalltalkClassFromFamixClassName: self classNameFromMethod
			ifAbsent: [nil] ].
	^ stClass