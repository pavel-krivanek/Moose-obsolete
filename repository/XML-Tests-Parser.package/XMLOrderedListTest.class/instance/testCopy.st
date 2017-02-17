tests
testCopy
	| list |

	list := self emptyList.
	self assertList: list copy isCopyOf: list.

	list := self listWithSingleItem.
	self assertList: list copy isCopyOf: list.

	list := self listWithItems.
	self assertList: list copy isCopyOf: list.