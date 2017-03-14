tests
testHasStringNodes
	| list |

	list := self emptyList.
	self deny: list hasStringNodes.

	list addAll: self listItems.
	self assert: list hasStringNodes.

	list removeAll: self listStringNodes.
	self deny: list hasStringNodes.