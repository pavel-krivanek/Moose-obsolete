tests
testHasElements
	| list |

	list := self emptyList.
	self deny: list hasElements.

	list addAll: self listItems.
	self assert: list hasElements.

	list removeAll: self listElements.
	self deny: list hasElements.