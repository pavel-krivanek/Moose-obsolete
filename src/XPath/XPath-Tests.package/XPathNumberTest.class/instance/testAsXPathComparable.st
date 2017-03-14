tests
testAsXPathComparable
	| comparable |

	comparable := 1 asXPathComparable.
	self
		assert: comparable class == XPathNumberComparable;
		assert: comparable value = 1.