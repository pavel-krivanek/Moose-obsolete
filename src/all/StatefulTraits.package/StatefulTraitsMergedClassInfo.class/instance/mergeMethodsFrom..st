merging
mergeMethodsFrom: aTrait

	aTrait traitMethods do: [ :each | self mergeMethod: each onClassSide: false ].
	aTrait class localMethods do: [ :each | self mergeMethod: each onClassSide: true ].
	