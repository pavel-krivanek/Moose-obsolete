enumerating - axis
/ aStringOrBlockOrNodeTestWithPredicates
	^ (aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				childAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self childAxis: aStringOrBlockOrNodeTestWithPredicates]) sort