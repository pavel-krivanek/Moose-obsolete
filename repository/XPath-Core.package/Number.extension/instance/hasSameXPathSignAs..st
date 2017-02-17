*XPath-Core-testing
hasSameXPathSignAs: aNumber
	"#sign/#sign: do not behave consistently across Pharo/Squeak/GS"
	^ (self negative
		or: [self isXPathNegativeZero]) =
			(aNumber negative
				or: [aNumber isXPathNegativeZero])