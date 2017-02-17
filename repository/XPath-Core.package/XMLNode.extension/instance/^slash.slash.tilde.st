*XPath-Core-enumerating - axis
//~ aStringOrBlockOrNodeTestWithPredicates
	^ aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				descendantOrSelfAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self descendantOrSelfAxis: aStringOrBlockOrNodeTestWithPredicates]