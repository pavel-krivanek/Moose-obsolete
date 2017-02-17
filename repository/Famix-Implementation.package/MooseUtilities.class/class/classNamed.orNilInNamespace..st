private
classNamed: aClassNameSymbol orNilInNamespace: aNamespace
	"return the class defined in the namespace or its contained namespace or nil"

	| res |
	res := aNamespace allClasses
		detect:
			[:each | 
			each name asSymbol == aClassNameSymbol
				or: [each fullName asSymbol == aClassNameSymbol]]
		ifNone: [nil].
	^res