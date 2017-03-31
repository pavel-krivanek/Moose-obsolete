tests
testAsXPathFilterExpressionLocationPathRoot
	| list |

	list := self emptyList.
	self assert: list asXPathFilterExpressionLocationPathRoot == list.