tests
testCopyEmpty
	| list |

	list := self emptyList.
	self assertList: list copyEmpty copiedFrom: list equals: self emptyList.

	list := self listWithSingleItem.
	self assertList: list copyEmpty copiedFrom: list equals: self emptyList.

	list := self listWithItems.
	self assertList: list copyEmpty copiedFrom: list equals: self emptyList.