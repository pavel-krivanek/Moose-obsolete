tests
testElementAfter
	| list elementAfter |

	list := self listWithItems.
	elementAfter := nil.
	self listElements reverseDo: [:each |
		self assert: (list elementAfter: each) = elementAfter.
		elementAfter := each].