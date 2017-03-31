tests
testAncestorOrSelfAxisPredicates
	| list result |

	list := self listWithItems.
	result := list %%~ ('*' ?? 2).
	self
		assertList: result
		copiedFrom: list
		hasNode: self listItems first ancestorElements first.
	self assert: (result %%~ ('*' ?? 2)) isEmpty.

	result := list %%~ ('root' ?? 1).
	self
		assertList: result
		copiedFrom: list
		hasNode: self listItems first ancestorElements last.
	self assert: (result %%~ ('root' ?? 2)) isEmpty.