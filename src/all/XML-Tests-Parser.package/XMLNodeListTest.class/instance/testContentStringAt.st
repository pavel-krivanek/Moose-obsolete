tests
testContentStringAt
	| list |

	list := self listWithItems.
	self listElements do: [:each |
		self assert:
			(list contentStringAt: each name) = each contentString].