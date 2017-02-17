coverage
methodCoverage
	"Returns method coverage for all feature-traces in the model"

	| aMethodsSize aCurrentMethodsSize aPercentage |
	aMethodsSize := (self mooseModel allMethods reject: [ :aMethod | aMethod isTestMethod ]) size.
	aCurrentMethodsSize := self getAllMethods size.
	aPercentage := ((aCurrentMethodsSize / aMethodsSize) asFloat * 100) rounded.
	^ aPercentage