tests
testRawContentStringAt
	| list |

	list := self listWithItems.
	self listElements do: [:each |
		self assert:
			(list rawContentStringAt: each name) = each rawContentString].