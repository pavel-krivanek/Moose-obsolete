*XPath-Tests
testAsXPathFilterExpressionLocationPathRoot
	| node |

	node := self newNode.
	self assert: node asXPathFilterExpressionLocationPathRoot == node.