*XPath-SqueakCommonCompatibility
isXPathPositiveZero
	"see the #isXPathNegativeZero comment"
	^ self isZero
		and: [(self asFloat at: 1) isZero]