queries - methods
methodNamed: aSymbol

	| allMethods |
	allMethods := IdentitySet new.
	self methods do: [ :each | each name = aSymbol ifTrue: [^ each]].
	^ nil