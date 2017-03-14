tests
testAtEnd
	| adapter |

	adapter := self newStreamAdapter.
	self outputCollection size timesRepeat: [
		self deny: adapter atEnd.
		adapter next].
	self assert: adapter atEnd.