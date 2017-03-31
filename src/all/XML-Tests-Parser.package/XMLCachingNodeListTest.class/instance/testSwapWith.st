tests
testSwapWith
	| list cachedElements start end |

	super testSwapWith.

	list := self listWithItems.
	cachedElements := list elements.
	start := 1.
	end := list size.
	[start < end]
		 whileTrue: [
			list swap: start with: end.
			start := start + 1.
			end := end - 1].
	self assert: list elements = cachedElements reversed.