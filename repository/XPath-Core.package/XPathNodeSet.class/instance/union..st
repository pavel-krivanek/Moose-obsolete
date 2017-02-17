enumerating
union: aNodeSet
	"XPath node set union operator"
	^ self copy
		addAll: aNodeSet;
		sort