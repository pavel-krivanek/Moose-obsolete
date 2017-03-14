tests
testContentStringAt
	| root |

	root := self newNodeWithElements firstElement.
	root elementsDo: [:each |
		self assert: (root contentStringAt: each name) = each contentString].