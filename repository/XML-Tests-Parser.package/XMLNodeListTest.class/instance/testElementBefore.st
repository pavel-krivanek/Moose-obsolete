tests
testElementBefore
	| list elementBefore |

	list := self listWithItems.
	elementBefore := nil.
	self listElements do: [:each |
		self assert: (list elementBefore: each) = elementBefore.
		elementBefore := each].