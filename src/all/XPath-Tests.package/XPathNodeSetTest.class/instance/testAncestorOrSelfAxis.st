tests
testAncestorOrSelfAxis
	| list result |

	list := self listWithItems.
	result := list %%~ '*'.
	self
		assertList: result
		copiedFrom: list
		hasNodes:
			"use #asArray to satisfy GS's Array>>#, argument check"
			(self listElements asArray,
				self listElements first ancestorElements asArray).
	self assert: (result %%~ 'absent') isEmpty.

	result := list %%~ 'root'.
	self
		assertList: result
		copiedFrom: list
		hasNode: self listItems first ancestorElements last.
	self assert: (result %%~ 'absent') isEmpty.