enumerating - axis
@@ aStringOrBlockOrNodeTestWithPredicates
	^ aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				namespaceAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self namespaceAxis: aStringOrBlockOrNodeTestWithPredicates]