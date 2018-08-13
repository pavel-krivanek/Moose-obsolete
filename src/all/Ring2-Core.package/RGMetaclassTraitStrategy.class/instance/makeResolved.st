private - backend access
makeResolved

	
	"try to set the correct name before resolving of it"
	((self owner hasUnresolved: #name) and: [ self baseClass isRingResolved and: [ self baseTrait hasResolvedName] ]) ifTrue: [ 
		self owner pvtName: (self baseTrait name, ' classTrait') asSymbol.
		 ].

	super makeResolved.
	
	baseTrait := self baseTrait.