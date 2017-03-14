tests
testSize
	| set size |

	set := self emptySet.
	size := 0.
	self assert: set size = size.
	self setElements do: [:each |
		set add: each.
		size := size + 1.
		self assert: set size = size].