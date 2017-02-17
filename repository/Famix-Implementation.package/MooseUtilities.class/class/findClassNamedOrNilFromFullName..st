getting classes
findClassNamedOrNilFromFullName: stClassFullNameSymbol
	"returns the class whose name is aClassFullNameSymbol. 
	aClassFullNameSymbol should smalltalk and not moose related.and should not represent a metaclass"
	
	^ self class environment at: stClassFullNameSymbol asSymbol ifAbsent: [nil]

	"Alternative could be 
						cls := Compiler evaluate: 'SomeClassName'.
						cls isBehavior
						ifTrue: [^cls]"

	"Or older alternative dealing with namespaces:
		| aClassNameSymbol |	
		aClassNameSymbol := aClassFullNameSymbol asSymbol.
		^Root allClasses detect: [:each | each fullName asSymbol == aClassNameSymbol]
			ifNone: [nil]	"

"	^(stClassFullNameSymbol includes: $.)
		ifTrue:
			[(LiteralBindingReference pathString: stClassFullNameSymbol asString)
				ifDefinedDo: [:cl | cl]
				elseDo: [nil]]
		ifFalse:
			[self
				findClassNamedOrNilFromFullName:
					('Smalltalk.' , stClassFullNameSymbol) asSymbol]"