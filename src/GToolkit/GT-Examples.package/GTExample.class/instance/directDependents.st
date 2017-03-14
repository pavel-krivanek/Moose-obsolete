TODO
directDependents
	<todo: 'better name -> #myDependents and #dependents is taken - wtf!'>
	^ (GTExampleOrganizer instance examplesSelect: [ :each | each hasDependency: self ]) asSet asArray