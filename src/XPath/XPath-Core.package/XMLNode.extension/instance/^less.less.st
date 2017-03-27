*XPath-Core-enumerating - axis
<< aStringOrBlockOrNodeTestWithPredicates
	"reverse axis, requires sorting"
	^ (aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				precedingAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self precedingAxis: aStringOrBlockOrNodeTestWithPredicates]) sort