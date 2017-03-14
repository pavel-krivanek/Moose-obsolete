tests
testAsXPathComparable
	| comparable |

	comparable := self listWithItems asXPathComparable.
	self
		assert: comparable class == XPathNodeSetComparable;
		assert: comparable value = self listWithItems.