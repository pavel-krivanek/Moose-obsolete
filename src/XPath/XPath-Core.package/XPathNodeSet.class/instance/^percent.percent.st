enumerating - axis
%% aStringOrBlockOrNodeTestWithPredicates
	^ (aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				ancestorAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self ancestorAxis: aStringOrBlockOrNodeTestWithPredicates]) sort