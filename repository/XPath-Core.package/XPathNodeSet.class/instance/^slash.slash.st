enumerating - axis
// aStringOrBlockOrNodeTestWithPredicates
	^ aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				descendantAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self descendantAxis: aStringOrBlockOrNodeTestWithPredicates]