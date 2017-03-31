*XPath-Core-enumerating - axis
%%~ aStringOrBlockOrNodeTestWithPredicates
	"reverse axis, requires sorting"
	^ (aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				ancestorOrSelfAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self ancestorOrSelfAxis: aStringOrBlockOrNodeTestWithPredicates]) sort