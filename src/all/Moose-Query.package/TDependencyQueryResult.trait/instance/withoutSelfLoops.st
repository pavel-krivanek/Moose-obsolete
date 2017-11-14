filtering
withoutSelfLoops
	"exclude dependencies which loop back to the receiver"

	^ self rejectDependencies: [ :dep | (self opposite: dep) asCollection anySatisfy: [ :opp | self receiver moosechefEqualsTo: opp moduloScope: self receiver class ] ]