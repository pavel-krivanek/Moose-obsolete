tests
testAsXPathUnionable
	| list |

	list := self emptyList.
	self assert: list asXPathUnionable == list.