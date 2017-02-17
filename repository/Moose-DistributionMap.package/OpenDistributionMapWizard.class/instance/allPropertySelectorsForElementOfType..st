computing - possible properties
allPropertySelectorsForElementOfType: aClass

	"return a list of property selectors that can be applied to instances of aClass."
"	|result|
	self halt.
	result := (aClass allPropertySelectorsComputableForAtLeastOneElementIn: self mooseModel).
	^ result"
	^ aClass allPropertySelectors values