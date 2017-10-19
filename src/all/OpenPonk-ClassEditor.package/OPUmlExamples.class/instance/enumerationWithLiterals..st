accessing
enumerationWithLiterals: anEnumeration
	<gtExample>
	<dependsOn: #emptyEnumeration>
	#(public private protected package)
		do: [ :each | 
			| literal |
			literal := OPUMLEnumerationLiteral new name: each.
			anEnumeration ownedLiterals add: literal ].
	^ anEnumeration