tests
testAsXPathComparable
	| comparable |

	comparable := 'test' asXPathComparable.
	self
		assert: comparable class == XPathStringComparable;
		assert: comparable value = 'test'.