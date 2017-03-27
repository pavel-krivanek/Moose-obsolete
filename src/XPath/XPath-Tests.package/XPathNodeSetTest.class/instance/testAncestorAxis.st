tests
testAncestorAxis
	| list result |

	list := self listWithItems.
	result := list %% '*'.
	self
		assertList: result
		copiedFrom: list
		hasNodes: self listItems first ancestorElements.
	self assert: (result %% '*') isEmpty.

	result := list %% 'root'.
	self
		assertList: result
		copiedFrom: list
		hasNode: self listItems first ancestorElements last.
	self assert: (result %% 'root') isEmpty.