accessing
descendantElementsNamed: aName
	"returns a node list of all descendant elements whose qualified
	or local names match aName"

	^ self descendantElementsSelect: [:each | each isNamed: aName]