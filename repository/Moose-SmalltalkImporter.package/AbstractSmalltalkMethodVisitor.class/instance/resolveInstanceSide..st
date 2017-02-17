visitor-double dispatching
resolveInstanceSide: aNamedEntity
	"We ensure that a reference to a metaclass is considered as a reference to the class itself"

	((aNamedEntity isKindOf: FAMIXClass) and: ['*_class' match: aNamedEntity name])
		ifTrue: [| className |
				className := aNamedEntity name removeSuffix: '_class'.
				^ importer ensureClass: (Smalltalk at: className asSymbol) ]
		ifFalse: [ ^ aNamedEntity ]