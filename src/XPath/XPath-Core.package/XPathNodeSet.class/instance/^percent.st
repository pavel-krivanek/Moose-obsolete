enumerating - axis
% aStringOrBlockOrNodeTestWithPredicates
	^ (aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				parentAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self parentAxis: aStringOrBlockOrNodeTestWithPredicates]) sort