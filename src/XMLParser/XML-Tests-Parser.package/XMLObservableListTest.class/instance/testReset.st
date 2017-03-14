tests
testReset
	| list |

	super testReset.
	list := self listWithItems.
	self
		should: [list reset]
		removeAll: self listItems reversed
		fromAndNotify: list.