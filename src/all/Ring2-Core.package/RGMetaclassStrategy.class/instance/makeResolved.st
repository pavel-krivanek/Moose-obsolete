private - backend access
makeResolved

	"try to set the correct name before resolving of it"
	((self owner hasUnresolved: #name) and: [ self baseClass isRingResolved and: [ self baseClass hasResolvedName ] ]) ifTrue: [ 
		self owner pvtName: (self baseClass name, ' class') asSymbol.
		 ].
	
	super makeResolved.
	
	baseClass := self baseClass.