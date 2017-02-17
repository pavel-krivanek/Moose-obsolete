*XPath-Tests
testDescendantOrSelfAxis
	| node list |

	node := self newNode.
	list := node //~ 'node()'.
	self
		assert: list = (self nodeSetClass with: node);
		assertList: list hasSortOrder: XPathDocumentSortOrder.

	list := node //~ '*'.
	node isElement
		ifTrue: [
			self
				assert: list = (self nodeSetClass with: node);
				assertList: list hasSortOrder: XPathDocumentSortOrder]
		ifFalse: [self assert: list isEmpty].