tests
testAsXPathNodeSet
	| list |

	list := self emptyList.
	self assert: list asXPathNodeSet == list.