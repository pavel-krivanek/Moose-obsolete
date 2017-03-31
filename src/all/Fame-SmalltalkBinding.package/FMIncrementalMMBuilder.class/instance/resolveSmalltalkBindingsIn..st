private
resolveSmalltalkBindingsIn: aFMMetaRepository

	| unboundProps |
	aFMMetaRepository updateClassDict.
	superclassDict keysAndValuesDo: [ :fmClass :fmSuperclass |
		(aFMMetaRepository elementNamed: fmClass)
											superclass: (aFMMetaRepository elementNamed: fmSuperclass) ].
	unboundProps := aFMMetaRepository elements
											select: [ :e | e isFM3Property and: [ e implementingSelector isNil ]].
	" assume that the given prop is actually the selector"
	unboundProps do: [ :prop | prop setImplementingSelector: prop name asSymbol ]