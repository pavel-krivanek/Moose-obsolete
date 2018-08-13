accessing
makeResolved

	
	"try to set the correct name before resolving of it"
	((self owner hasResolvedName not) and: [ self classTrait isRingResolved and: [ self classTrait hasResolvedName ] ]) ifTrue: [ 
		self owner pvtName: (self classTrait name withoutSuffix: ' classTrait') asSymbol.
		 ].
	
	super makeResolved.
	classTrait := self classTrait.
	comment := self comment.
	package := self package.
	