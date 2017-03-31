*XPath-Core-enumerating - axis
%% aStringOrBlockOrNodeTestWithPredicates
	"reverse axis, requires sorting"
	^ (aStringOrBlockOrNodeTestWithPredicates isXPathNodeTestWithPredicates
		ifTrue: [
			self
				ancestorAxis: aStringOrBlockOrNodeTestWithPredicates nodeTest
				predicates: aStringOrBlockOrNodeTestWithPredicates predicates]
		ifFalse: [
			self ancestorAxis: aStringOrBlockOrNodeTestWithPredicates]) sort