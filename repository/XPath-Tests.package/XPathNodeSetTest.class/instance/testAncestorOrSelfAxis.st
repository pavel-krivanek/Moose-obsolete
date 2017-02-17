tests
testAncestorOrSelfAxis
	| list result |

	list := self listWithItems.
	result := list %%~ '*'.
	self
		assertList: result
		copiedFrom: list
		equals:
			((self listClass with: self listElements first)
				addAll: self listElements first ancestorElements;
				addAll: self listElements allButFirst;
				yourself).
	self
		assertListHasUnknownSortOrder: result;
		assert: (result %%~ 'absent') isEmpty.

	result := list %%~ 'root'.
	self
		assertList: result
		copiedFrom: list
		equals:
			(self listClass with:
				self listElements first ancestorElements first).
	self
		assertList: result
		hasSortOrder: XPathReverseDocumentSortOrder.
	self assert: (result %%~ 'absent') isEmpty.