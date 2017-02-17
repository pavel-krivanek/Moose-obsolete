enumerating - axis
>> aStringOrBlockOrNodeTestWithPredicates
	^ aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				followingAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self followingAxis: aStringOrBlockOrNodeTestWithPredicates]