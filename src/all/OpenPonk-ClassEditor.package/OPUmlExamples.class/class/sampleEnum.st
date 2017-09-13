samples
sampleEnum
	| enum |
	enum := OPUMLEnumeration new name: 'VisibilityKind'.
	#(public private protected package)
		do: [ :each | 
			| literal |
			literal := OPUMLEnumerationLiteral new name: each.
			enum ownedLiterals add: literal ].
	^ enum