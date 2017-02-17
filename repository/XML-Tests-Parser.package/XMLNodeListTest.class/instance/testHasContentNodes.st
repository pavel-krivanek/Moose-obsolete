tests
testHasContentNodes
	| list |

	list := self emptyList.
	self deny: list hasContentNodes.

	list addAll: self listItems.
	self assert: list hasContentNodes.

	list removeAll: self listContentNodes.
	self deny: list hasContentNodes.