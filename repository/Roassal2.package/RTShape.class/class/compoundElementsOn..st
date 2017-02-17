public
compoundElementsOn: models
	"Return a group of elements, which is a kind of ordered collection"
	| group aShape |
	group := RTGroup new.
	aShape := self instance.
	models do: [ :m | 
		group add: (aShape compoundElementOn: m) ].
	^ group