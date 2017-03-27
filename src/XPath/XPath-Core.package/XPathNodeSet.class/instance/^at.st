enumerating - axis
@ aStringOrBlockOrNodeTestWithPredicates
	^ (aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				attributeAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self attributeAxis: aStringOrBlockOrNodeTestWithPredicates]) sort