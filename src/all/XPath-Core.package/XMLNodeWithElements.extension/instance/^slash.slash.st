*XPath-Core-enumerating - axis
// aStringOrBlockOrNodeTestWithPredicates
	"redefined here to prevent a conflicting method from the Pastell project
	from shadowing the inherited implementation if Pastell was installed"
	^ aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				descendantAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self descendantAxis: aStringOrBlockOrNodeTestWithPredicates]