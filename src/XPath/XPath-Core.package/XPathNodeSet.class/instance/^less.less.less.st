enumerating - axis
<<< aStringOrBlockOrNodeTestWithPredicates
	^ aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				precedingSiblingAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self precedingSiblingAxis: aStringOrBlockOrNodeTestWithPredicates]