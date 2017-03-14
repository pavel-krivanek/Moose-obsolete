private
sortAttributes: properties

	| names composites sorted |
	sorted := properties asArray sorted: [:n1 :n2 | n1 name < n2 name ].
	names := sorted select: [ :each | each name == #name ].
	composites := sorted select: [ :each | each isComposite ].
	^names, (sorted copyWithoutAll: (names union: composites)), composites