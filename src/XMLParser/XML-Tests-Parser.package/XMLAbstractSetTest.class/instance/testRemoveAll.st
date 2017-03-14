tests
testRemoveAll
	| set |

	set := self setWithElements.
	self
		assert: set removeAll == set;
		assert: set isEmpty.