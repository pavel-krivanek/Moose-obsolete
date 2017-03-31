tests
testAncestorAxisPredicates
	| list result |

	list := self listWithItems.
	result := list %% ('*' ?? 1).
	self
		assertList: result
		copiedFrom: list
		hasNode: self listItems first ancestorElements last.
	self assert: (result %% ('*' ?? 1)) isEmpty.

	result := list %% ('root' ?? 1).
	self
		assertList: result
		copiedFrom: list
		hasNode: self listItems first ancestorElements last.
	self assert: (result %% ('root' ?? 1)) isEmpty.