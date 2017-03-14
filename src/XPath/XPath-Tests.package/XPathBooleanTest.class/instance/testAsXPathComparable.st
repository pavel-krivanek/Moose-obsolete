tests
testAsXPathComparable
	| comparable |

	comparable := true asXPathComparable.
	self
		assert: comparable class == XPathBooleanComparable;
		assert: comparable value.