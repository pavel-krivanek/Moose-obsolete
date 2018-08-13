default model values
makeResolved

	
	"try to set the correct name before resolving of it"
	((self owner hasResolvedName not) and: [ self owner metaclass isRingResolved and: [ self metaclass hasResolvedName ] ]) ifTrue: [ 
		self owner pvtName: (self owner metaclass name withoutSuffix: ' class') asSymbol.
		 ].
	
	super makeResolved.
	
	comment := self comment.
	classVariables := self classVariables.
	package := self package.
	sharedPools := self sharedPools.
