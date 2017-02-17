tests
testAsXPathComparable
	| comparable |

	comparable := self defaultComparable.
	self assert: comparable asXPathComparable == comparable.