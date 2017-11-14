tests
testSwapWith
	| list start end |

	list := self listWithItems.

	start := 1.
	end := list size.
	[start < end]
		whileTrue: [
			list swap: start with: end.
			start := start + 1.
			end := end - 1].
	self assert: list = (self listClass newFrom: self listItems reversed).

	start := 1.
	end := list size.
	[start < end]
		whileTrue: [
			list swap: end with: start.
			start := start + 1.
			end := end - 1].
	self assert: list = self listWithItems.

	1 to: list size do: [:i | list swap: i with: i].
	self assert: list = self listWithItems.

	self
		should: [list swap: 0 with: 1]
		raise: Error.
	self
		should: [list swap: 1 with: 0]
		raise: Error.
	self
		should: [list swap: list size + 1 with: list size]
		raise: Error.
	self
		should: [list swap: list size with: list size + 1]
		raise: Error.
	self assert: list = self listWithItems.