*Ring2-Monticello
traitCompositionFrom: aStringOrNil parent: aBehavior
	
	| composition transformations |
	
	composition := RGTraitComposition parent: aBehavior.

	aStringOrNil ifNil: [ ^ composition ].

	transformations := RGTraitCompositionVisitor new parse: aStringOrNil for: composition.
	transformations do: [ :each |
		composition addTransformation: each ].
	^ composition