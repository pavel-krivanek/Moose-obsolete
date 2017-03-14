tests
testRawContentStringAt
	| root |

	root := self newNodeWithElements firstElement.
	root elementsDo: [:each |
		self assert: (root rawContentStringAt: each name) = each rawContentString].