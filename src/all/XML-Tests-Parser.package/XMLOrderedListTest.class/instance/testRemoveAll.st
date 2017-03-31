tests
testRemoveAll
	| list |

	list := self listWithItems.
	self
		assert: list removeAll == list;
		assert: list isEmpty;
		assert: list removeAll == list;
		assert: list isEmpty.