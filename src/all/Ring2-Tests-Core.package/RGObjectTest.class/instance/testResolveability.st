tests
testResolveability

	"test if we can resolve standard objects. They should be all resolved"
	
	{ Object. 42. 'aString'. #aSymbol } do: [ :each |
		self deny: each isRGObject.
		self assert: each isRingFullyResolved.
		self deny: each isRingFullyUnresolved  ]
	