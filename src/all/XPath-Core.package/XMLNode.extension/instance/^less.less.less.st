*XPath-Core-enumerating - axis
<<< aStringOrBlockOrNodeTestWithPredicates
	"reverse axis, requires sorting"
	^ (aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				precedingSiblingAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self precedingSiblingAxis: aStringOrBlockOrNodeTestWithPredicates]) sort