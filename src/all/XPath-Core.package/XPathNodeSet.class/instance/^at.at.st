enumerating - axis
@@ aStringOrBlockOrNodeTestWithPredicates
	"Returns an ordered list of all attribute value strings of all matching
	attributes from all elements of the receiver or an empty list if there
	aren't any."

	^ (self @ aStringOrBlockOrNodeTestWithPredicates) stringValues