tests
testStreamReadingPortability
	| stream adapter |

	stream := XMLExceptionRaisingReadStream on: self qualifiedName.
	adapter := self newStreamAdapterOn: stream.
	self qualifiedName do: [:each |
		self
			deny: adapter atEnd;
			assert: adapter peek = each;
			assert: adapter next = each].
	self assert: adapter atEnd.
	self
		shouldnt: [
			adapter
				peek;
				next]
		raise: Error.
	self
		assert: adapter peek isNil;
		assert: adapter next isNil.

	self assert: stream atEnd.
	self should: [stream peek] raise: Error.
	self should: [stream next] raise: Error.