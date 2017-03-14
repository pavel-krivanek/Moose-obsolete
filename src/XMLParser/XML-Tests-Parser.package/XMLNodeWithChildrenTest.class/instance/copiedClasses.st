accessing
copiedClasses
	"an object that isKindOf: any of these should be copied if it's
	reachable from a copied node directly or through another copied object"

	^ #(OrderedCollection Dictionary
		XMLNode XMLNamespaceScope XMLOrderedList
		XMLConfiguration XMLNodeFactory)