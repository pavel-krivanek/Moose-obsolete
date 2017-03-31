tests
testSort
	| list cachedElements |

	super testSort.

	list := self listWithItems.
	cachedElements := list elements.
	list sort: self reverseSortBlock.
	self assert: list elements = (cachedElements sort: self reverseSortBlock).