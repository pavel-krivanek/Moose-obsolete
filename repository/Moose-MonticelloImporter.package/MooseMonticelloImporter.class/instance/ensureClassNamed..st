populating
ensureClassNamed: classNameSymbol
	| cls |
	cls := self targetModel allClasses detect: [:each | each name == classNameSymbol] ifNone: [nil].
	cls ifNotNil: [ ^ cls ].
	
	cls := self createClassNamed: classNameSymbol ivs: #() superclassName: nil.
	cls isStub: true.
	
	^ cls 