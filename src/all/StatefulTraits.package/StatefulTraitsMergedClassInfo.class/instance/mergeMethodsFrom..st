merging
mergeMethodsFrom: aTrait

	aTrait traitMethods do: [ :each | self mergeMethod: each onClassSide: false ].
	aTrait class traitMethods do: [ :each | self mergeMethod: each onClassSide: true ].
	