enumerating - axis
%%~ aStringOrBlockOrNodeTestWithPredicates
	^ (aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				ancestorOrSelfAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self ancestorOrSelfAxis: aStringOrBlockOrNodeTestWithPredicates]) sort