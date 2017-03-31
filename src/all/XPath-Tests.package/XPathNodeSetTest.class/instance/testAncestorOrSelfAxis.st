tests
testAncestorOrSelfAxis
	| list result |

	list := self listWithItems.
	result := list %%~ '*'.
	self
		assertList: result
		copiedFrom: list
		hasNodes: self listElements, self listElements first ancestorElements.
	self assert: (result %%~ 'absent') isEmpty.

	result := list %%~ 'root'.
	self
		assertList: result
		copiedFrom: list
		hasNode: self listItems first ancestorElements last.
	self assert: (result %%~ 'absent') isEmpty.